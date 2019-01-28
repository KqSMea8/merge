.class public Lc8/Nib;
.super Lc8/Ihb;
.source "RefreshSidTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Ihb",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private view:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;

    .prologue
    .line 18
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p0, v0}, Lc8/Ihb;-><init>(Landroid/app/Activity;)V

    .line 19
    iput-object p1, p0, Lc8/Nib;->view:Landroid/webkit/WebView;

    .line 20
    return-void
.end method


# virtual methods
.method protected bridge synthetic asyncExecute([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lc8/Nib;->asyncExecute([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs asyncExecute([Ljava/lang/String;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 24
    sget-object v0, Lc8/Bgb;->credentialService:Lc8/rhb;

    .line 25
    .local v0, "credentialService":Lc8/rhb;
    invoke-interface {v0}, Lc8/rhb;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 26
    iget-object v1, p0, Lc8/Nib;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lc8/mjb;->setActivity(Landroid/app/Activity;)V

    .line 27
    sget-object v1, Lc8/eib;->INSTANCE:Lc8/eib;

    iget-object v2, p0, Lc8/Nib;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lc8/eib;->showLogin(Landroid/app/Activity;)V

    .line 30
    :cond_0
    return-object v3
.end method

.method protected doWhenException(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 36
    invoke-static {}, Lc8/Shb;->toastSystemException()V

    .line 37
    return-void
.end method
