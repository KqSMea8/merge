.class public Lc8/ASb;
.super Ljava/lang/Object;
.source "WeexErrorCallBack.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public registAndCallBack(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    new-instance v0, Lc8/zSb;

    invoke-direct {v0, p0, p1}, Lc8/zSb;-><init>(Lc8/ASb;Landroid/content/Context;)V

    invoke-static {v0}, Lc8/bVf;->setJSExcetptionAdapter(Lc8/FVf;)V

    .line 144
    return-void
.end method
