body {
    background: black;
    color: white;
}

.footer-item p a {
    color: white;
}

.navbar {
    border-bottom: 1px solid #c0c0c0;
}

.nav-item a {
    font-weight: bolder;
}

.carousel-inner {
    width: 100%;
    background: #c0c0c0;
}

img {
    width: 100%;
    height: 100%;
}

a {
    text-decoration: none;
}
.overflow_txt {
    overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis
}

.cencent-box{

}

.centent-img-box {
    position: relative;
}
.centent-game-name {
    position: absolute;
    left: .6rem;
    bottom: 0px;
    background: #409EFF;
    color: white;
    height: 3rem;
    line-height: 3rem;
    font-size: 20px;
    text-align: center;
    overflow: hidden;
    white-space: nowrap;
    border-radius: 0px 15px;
    text-overflow: ellipsis
}


.group-list-box {
    margin-top: 5rem;

}
.group-list-box-img {
    position: relative;
    height: 7rem;
}
.group-play-btn {
    position: absolute;
    width: 5rem;
    height: 2rem;
    background: #00aeff;
    text-align: center;
    line-height: 2rem;
    color: white;
    right: 0;
    bottom: 0;
}

.play-btn {
    width: 50%;
    height: 3rem;
    margin: 1rem auto;
    font-size: 20px;
    border-radius: 20rem;
    text-align: center;
    line-height: 3rem;
}

.detail-more-box-1 {
    height: 12rem;
}

.logo img{
    width: 5rem;
    margin-left: 4rem;
}


@media (min-width: 992px) {
    .nav-item {
        margin-right: 2rem;
    }

    .new-img-content-1 {
        height: 15rem;
    }
    .centent-img-box {
        height: 18rem;
    }
    .group-list-box-box {
        width: 30rem;
        height: 7rem;
    }

    .fiex-card-box {
        height: 20rem;
    }

    .carouse-content-box {
        height: 15rem;
    }
    .carousel-inner {
        height: 32rem;
    }

    .detail-img-box-1 {
        width: 100%;
        height: 28rem;
    }
    .navbar-brand img{
        width: 5rem;
        margin-left: 4rem;
    }




}

@media (max-width: 992px) {
    .centent-img-box {
        height: 15rem;
    }
    .navbar-brand img{
        width: 3rem;
        margin-left: 2rem;
    }

}