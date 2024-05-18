<script src="./modules/search/search.js"></script>
<div class="col-lg-4">
    <br>
    <div class="blog-box-title">
        <h2>Tìm bài viết</h2>
    </div>
    <form id="_searchForm">
        <div class="input-group">
            <input type="text" name="keyword" class="form-control rounded-0" maxlength="40" placeholder="Từ khóa" autocomplete="off" />
            <div class="input-group-append">
                <button type="submit" class="btn btn-primary rounded-0 pr-3 pl-" value="Tìm kiếm"><i class="fa fa-search"></i></button>
            </div>
        </div>
    </form>
    <div class="border p-3 mb-4">
        <ul class="nav nav-pills mb-3" role="tablist">
            <li class="nav-item">
                <a class="nav-link active" id="last-tab" data-bs-toggle="pill" href="#last" role="tab" aria-controls="last" aria-selected="true">
                    <h3 class="font-weight-bold font-roboto-slab">Bài mới</h3>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="view-tab" data-bs-toggle="pill" href="#view" role="tab" aria-controls="view" aria-selected="false">
                    <h3 class="font-weight-bold font-roboto-slab">Xem nhiều</h3>
                </a>
            </li>
        </ul>
        <div class="tab-content">
            <div class="tab-pane fade show active" id="last" role="tabpanel" aria-labelledby="last-tab">
                <div class="row">
                    <div class="col-md-12">
                        <div class="row itemsList">

                            <div class="col-md-6 itemsItem d-none mb-3">
                                <div class="card">
                                    <img style="height: 8rem;" class="card-img-top w-100 img-fluid" />
                                    <div class="card-body">
                                        <a href="#" class="font-roboto-slab">DU LỊCH CAMPUCHIA TỰ MÌNH - TẠI SAO KHÔNG</a>
                                        <p class="date-meta">15/10/2018</p>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="view" role="tabpanel" aria-labelledby="view-tab">
                <div class="row">
                    <div class="col-md-12">
                        <div class="row itemsList">

                            <div class="col-md-6 itemsItem d-none mb-3">
                                <div class="card">
                                    <img style="height: 8rem;" class="card-img-top w-100 img-fluid" />
                                    <div class="card-body">
                                        <a href="#" class="font-roboto-slab">DU LỊCH CAMPUCHIA TỰ MÌNH - TẠI SAO KHÔNG</a>
                                        <p class="date-meta">15/10/2018</p>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="blog-box-title mt-3">
        <h2>BẠN QUAN TÂM CHỦ ĐỀ GÌ?</h2>
    </div>
    <div id="_tabsList">

        <div class="d-inline">
            <input type="checkbox" class="btn-check" id="btncheck1" autocomplete="off">
            <label class="btn btn-outline-secondary" for="btncheck1">Checkbox 1</label>
        </div>

    </div>
</div>