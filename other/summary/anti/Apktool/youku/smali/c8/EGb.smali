.class public Lc8/EGb;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/rGb;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc8/sGb;)Z
    .locals 3

    invoke-static {}, Lc8/PFb;->getInstance()Lc8/PFb;

    move-result-object v1

    iget-object v0, p1, Lc8/sGb;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lc8/FGb;

    invoke-direct {v2, p0}, Lc8/FGb;-><init>(Lc8/EGb;)V

    invoke-virtual {v1, v0, v2}, Lc8/PFb;->logout(Landroid/app/Activity;Lc8/qib;)V

    iget-object v0, p1, Lc8/sGb;->d:Landroid/webkit/WebView;

    sget-object v1, Lc8/vFb;->HOME_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
