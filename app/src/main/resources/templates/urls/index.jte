@import hexlet.code.dto.BasePage
@import hexlet.code.util.NamedRoutes
@import hexlet.code.dto.urls.UrlsPage
@param UrlsPage page

@template.layout.page(
    page = page,
    content = @`
        <div class="container-lg mt-5">
            <h1>Сайты</h1>
            <table class="table table-bordered table-hover mt-3">
                <thead>
                    <tr>
                        <th class="col-1">ID</th>
                        <th>Имя</th>
                        <th class="col-2">Последняя проверка</th>
                        <th class="col-1">Код ответа</th>
                    </tr>
                </thead>
                @if(!page.getUrls().isEmpty())
                    <tbody>
                        @for(var url : page.getUrls())
                            <tr>
                                <td>
                                    ${url.getId()}
                                </td>
                                <td>
                                    <a href="${NamedRoutes.urlPath(url.getId())}">
                                        ${url.getName()}
                                    </a>
                                </td>
                                <td>
                                    none
                                </td>
                                <td>
                                    none
                                </td>
                            </tr>
                        @endfor
                    </tbody>
                @endif
            </table>
        </div>
`
)
