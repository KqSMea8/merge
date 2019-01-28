.class public interface abstract Lc8/nao;
.super Ljava/lang/Object;
.source "IPaginationContract.java"

# interfaces
.implements Lc8/mao;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/qao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPaginationPresenter"
.end annotation


# virtual methods
.method public abstract getPageInfo()Lc8/iao;
.end method

.method public varargs abstract loadFirstPage([Ljava/lang/Object;)V
.end method

.method public varargs abstract loadNextPage([Ljava/lang/Object;)V
.end method
