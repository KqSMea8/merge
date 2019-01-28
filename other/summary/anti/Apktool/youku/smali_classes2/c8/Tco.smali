.class public Lc8/Tco;
.super Ljava/lang/Object;
.source "UploadController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UploadController"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mRequestCode:I

.field private mTitle:Ljava/lang/String;

.field private mUploadHandler:Lc8/Xco;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lc8/Tco;->mActivity:Landroid/app/Activity;

    .line 25
    iput p2, p0, Lc8/Tco;->mRequestCode:I

    .line 26
    iput-object p3, p0, Lc8/Tco;->mTitle:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public onResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 43
    iget-object v0, p0, Lc8/Tco;->mUploadHandler:Lc8/Xco;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lc8/Tco;->mUploadHandler:Lc8/Xco;

    invoke-virtual {v0, p1, p2, p3}, Lc8/Xco;->onResult(IILandroid/content/Intent;)V

    .line 46
    :cond_0
    invoke-virtual {p0}, Lc8/Tco;->reset()V

    .line 47
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Lc8/Wco;)V
    .locals 4
    .param p1, "uploadMsg"    # Landroid/webkit/ValueCallback;
    .param p2, "params"    # Lc8/Wco;

    .prologue
    .line 34
    iget-object v0, p0, Lc8/Tco;->mUploadHandler:Lc8/Xco;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lc8/Xco;

    iget-object v1, p0, Lc8/Tco;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lc8/Tco;->mRequestCode:I

    iget-object v3, p0, Lc8/Tco;->mTitle:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lc8/Xco;-><init>(Landroid/app/Activity;ILjava/lang/String;)V

    iput-object v0, p0, Lc8/Tco;->mUploadHandler:Lc8/Xco;

    .line 36
    iget-object v0, p0, Lc8/Tco;->mUploadHandler:Lc8/Xco;

    invoke-virtual {v0, p1, p2}, Lc8/Xco;->openFileChooser(Landroid/webkit/ValueCallback;Lc8/Wco;)V

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    const-string/jumbo v0, "UploadController"

    const-string/jumbo v1, "mUploadHandler is already opened"

    invoke-static {v0, v1}, Lc8/Oao;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Tco;->mUploadHandler:Lc8/Xco;

    .line 31
    return-void
.end method
