.class public Lc8/lTh;
.super Ljava/lang/Object;
.source "UploadController.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFragment:Landroid/support/v4/app/Fragment;

.field private mRequestCode:I

.field private mTitle:Ljava/lang/String;

.field private mUploadHandler:Lc8/pTh;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lc8/lTh;->mActivity:Landroid/app/Activity;

    .line 24
    iput p2, p0, Lc8/lTh;->mRequestCode:I

    .line 25
    iput-object p3, p0, Lc8/lTh;->mTitle:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "requestCode"    # I
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lc8/lTh;->mActivity:Landroid/app/Activity;

    .line 30
    iput-object p1, p0, Lc8/lTh;->mFragment:Landroid/support/v4/app/Fragment;

    .line 31
    iput p2, p0, Lc8/lTh;->mRequestCode:I

    .line 32
    iput-object p3, p0, Lc8/lTh;->mTitle:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public onResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 53
    iget-object v0, p0, Lc8/lTh;->mUploadHandler:Lc8/pTh;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lc8/lTh;->mUploadHandler:Lc8/pTh;

    invoke-virtual {v0, p1, p2, p3}, Lc8/pTh;->onResult(IILandroid/content/Intent;)V

    .line 56
    :cond_0
    invoke-virtual {p0}, Lc8/lTh;->reset()V

    .line 57
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Lc8/oTh;)V
    .locals 4
    .param p1, "uploadMsg"    # Landroid/webkit/ValueCallback;
    .param p2, "params"    # Lc8/oTh;

    .prologue
    .line 40
    iget-object v0, p0, Lc8/lTh;->mUploadHandler:Lc8/pTh;

    if-nez v0, :cond_1

    .line 41
    iget-object v0, p0, Lc8/lTh;->mFragment:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lc8/pTh;

    iget-object v1, p0, Lc8/lTh;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lc8/lTh;->mRequestCode:I

    iget-object v3, p0, Lc8/lTh;->mTitle:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lc8/pTh;-><init>(Landroid/app/Activity;ILjava/lang/String;)V

    iput-object v0, p0, Lc8/lTh;->mUploadHandler:Lc8/pTh;

    .line 46
    :goto_0
    iget-object v0, p0, Lc8/lTh;->mUploadHandler:Lc8/pTh;

    invoke-virtual {v0, p1, p2}, Lc8/pTh;->openFileChooser(Landroid/webkit/ValueCallback;Lc8/oTh;)V

    .line 50
    :goto_1
    return-void

    .line 44
    :cond_0
    new-instance v0, Lc8/pTh;

    iget-object v1, p0, Lc8/lTh;->mFragment:Landroid/support/v4/app/Fragment;

    iget v2, p0, Lc8/lTh;->mRequestCode:I

    iget-object v3, p0, Lc8/lTh;->mTitle:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lc8/pTh;-><init>(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    iput-object v0, p0, Lc8/lTh;->mUploadHandler:Lc8/pTh;

    goto :goto_0

    .line 48
    :cond_1
    const-string/jumbo v0, "UploadController"

    const-string/jumbo v1, "mUploadHandler is already opened"

    invoke-static {v0, v1}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/lTh;->mUploadHandler:Lc8/pTh;

    .line 37
    return-void
.end method
