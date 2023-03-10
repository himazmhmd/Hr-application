<%@include file="../layout/jstl.jsp" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <%@include file="../layout/header.jsp" %>

    <title>Internal Server Error | ${siteTitle}</title>
  </head>
  <body>
    <div class="content-wrapper h-100 d-flex align-items-start justify-content-center pt-5">
      <div class="card p-5 mt-5">
        <h1 class="text-center">500 Something went wrong!</h1>
        <div class="text-center">
          <a href="/dashboard"> Go back to dashboard</a>
        </div>
      </div>
    </div>
  </body>
</html>
