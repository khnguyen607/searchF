document.addEventListener('DOMContentLoaded', async () => {
    document.querySelector("#_searchForm").addEventListener("submit", async (e) => {
        e.preventDefault()
        let keyword = document.querySelector("#_searchForm input").value
        _search(keyword)
    })
    document.querySelector("#_tabsList").addEventListener('click', async (e) => {
        let keyword = document.querySelector("#_searchForm input").value
        _search(keyword)
    })
    _showTags()
})
async function _search(keyword) {
    var items = await Helper.fetchData(
        'select',
        `SELECT baiviet.*, GROUP_CONCAT(tag.ten_tag) AS tags
            FROM baiviet
            LEFT JOIN syn_baiviet_tag ON baiviet.baiviet_id = syn_baiviet_tag.baivietID
            LEFT JOIN tag ON syn_baiviet_tag.tagID = tag.tag_id
            WHERE LOWER(baiviet.tieude) LIKE LOWER('%${keyword}%')
            GROUP BY baiviet.baiviet_id`
    )

    var promises = items.map(async item => {
        var check = await filterByTag(item.tags);
        return { item, check };
    });
    let results = await Promise.all(promises);
    var filteredItems = results.filter(result => result.check).map(result => result.item);
    
    var latestPosts = [...filteredItems].sort((a, b) => b.baiviet_id - a.baiviet_id)
    var mostViewedPosts = [...filteredItems].sort((a, b) => b.luotxem - a.luotxem)
    _showDatas(latestPosts, 'last')
    _showDatas(mostViewedPosts, 'view')
}

async function _showDatas(items, tabPane) {
    var tabPaneDiv = document.querySelector('#' + tabPane)
    var itemsList = tabPaneDiv.querySelector(".itemsList")
    var itemsItem = itemsList.querySelector(".itemsItem").cloneNode(true)
    itemsItem.classList.remove("d-none")
    itemsList.innerHTML = ""
    items.forEach(item => {
        var itemClone = itemsItem.cloneNode(true)

        itemClone.querySelector("img").src = "../backend/uploads/" + item.anh
        itemClone.querySelector("a.font-roboto-slab").textContent = item.tieude
        itemClone.querySelector("a.font-roboto-slab").href = "detail.php?baiviet_id="+item.baiviet_id
        itemClone.querySelector(".date-meta").textContent = Helper.formatDate(item.Ngaytao)

        itemsList.appendChild(itemClone)
    });
}

async function _showTags() {
    var items = await Helper.fetchData(
        'select',
        `select * from tag`
    )
    var itemsList = document.querySelector("#_tabsList")
    var itemsItem = itemsList.querySelector(".d-inline").cloneNode(true)
    itemsList.innerHTML = ""
    items.forEach(item => {
        var itemClone = itemsItem.cloneNode(true)

        itemClone.innerHTML=`
            <input type="checkbox" class="btn-check" id="tabBtnCheck${item.tag_id}" data-tagName="${item.ten_tag}" autocomplete="off">
            <label class="btn btn-outline-secondary" for="tabBtnCheck${item.tag_id}">${item.ten_tag}</label>
        `

        itemsList.appendChild(itemClone)
    });
}

async function filterByTag(tagsList) {
    if(!tagsList) return true
    var tagsSelected = Array.from(document.querySelectorAll("#_tabsList input:checked")).map(tag => tag.getAttribute('data-tagName'))
    if (tagsSelected.length == 0) return true 
    tagsSelected.forEach(tag => {
        if(tagsList.includes(tag)) return true
    })
    return false
}

class Helper {
    // Tương tác dataBase
    static async fetchData(action, sql) {
        const formData = new FormData();
        formData.append('action', action);
        formData.append('sql', sql);

        const requestOptions = {
            method: 'POST',
            body: formData
        };

        return fetch("modules/search/search.php", requestOptions)
            .then((response) => response.json())
            .then((data) => {
                return data;
            })
            .catch((error) => {
                console.log(error);
                return null;
            });
    }

    // Lấy biến get của trình duyệt
    static getParameter(name) {
        var queryParams = new URLSearchParams(window.location.search);
        if (queryParams.has(name)) {
            return queryParams.get(name);
        }
        return null;
    }

    static formatDate(inputDateStr) {
        var dateObj = new Date(inputDateStr);
        var day = dateObj.getDate();
        var month = dateObj.getMonth() + 1; // Tháng bắt đầu từ 0
        var year = dateObj.getFullYear();

        var formattedDate = day + '/' + month + '/' + year;

        return formattedDate;
    }

}