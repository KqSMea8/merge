.class public Lc8/OGb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lc8/NGb;


# direct methods
.method constructor <init>(Lc8/NGb;)V
    .locals 0

    iput-object p1, p0, Lc8/OGb;->a:Lc8/NGb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lc8/OGb;->a:Lc8/NGb;

    iget-object v0, v0, Lc8/NGb;->a:Landroid/webkit/WebView;

    sget-object v1, Lc8/vFb;->context:Landroid/content/Context;

    const-string/jumbo v2, "id"

    const-string/jumbo v3, "com_taobao_nb_sdk_webview_click"

    invoke-static {v1, v2, v3}, Lc8/iIb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->setTag(ILjava/lang/Object;)V

    const/4 v0, 0x0

    return v0
.end method
