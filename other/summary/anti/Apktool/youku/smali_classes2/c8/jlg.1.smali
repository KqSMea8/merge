.class public Lc8/jlg;
.super Lc8/Nlg;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/elg;,
        Lc8/flg;,
        Lc8/glg;,
        Lc8/hlg;,
        Lc8/ilg;
    }
.end annotation


# static fields
.field static final c:Landroid/widget/FrameLayout$LayoutParams;

.field static d:Landroid/widget/Toast;

.field private static f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Lc8/hlg;

.field private i:Lc8/Dmg;

.field private j:Landroid/widget/FrameLayout;

.field private k:Lc8/Vlg;

.field private l:Landroid/os/Handler;

.field private m:Z

.field private n:Lc8/thg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 46
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lc8/jlg;->c:Landroid/widget/FrameLayout$LayoutParams;

    .line 467
    const/4 v0, 0x0

    sput-object v0, Lc8/jlg;->d:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/Dmg;Lc8/thg;)V
    .locals 6

    .prologue
    .line 190
    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Lc8/Nlg;-><init>(Landroid/content/Context;I)V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/jlg;->m:Z

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/jlg;->n:Lc8/thg;

    .line 191
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/jlg;->e:Ljava/lang/ref/WeakReference;

    .line 192
    iput-object p3, p0, Lc8/jlg;->g:Ljava/lang/String;

    .line 193
    new-instance v0, Lc8/hlg;

    invoke-virtual {p5}, Lc8/thg;->getAppId()Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lc8/hlg;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/Dmg;)V

    iput-object v0, p0, Lc8/jlg;->h:Lc8/hlg;

    .line 194
    new-instance v0, Lc8/ilg;

    iget-object v1, p0, Lc8/jlg;->h:Lc8/hlg;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lc8/ilg;-><init>(Lc8/jlg;Lc8/hlg;Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/jlg;->l:Landroid/os/Handler;

    .line 195
    iput-object p4, p0, Lc8/jlg;->i:Lc8/Dmg;

    .line 196
    iput-object p5, p0, Lc8/jlg;->n:Lc8/thg;

    .line 197
    return-void
.end method

.method static synthetic a(Lc8/jlg;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lc8/jlg;->e:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 219
    new-instance v1, Landroid/widget/TextView;

    iget-object v0, p0, Lc8/jlg;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 220
    const-string/jumbo v0, "test"

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 225
    new-instance v2, Lc8/Vlg;

    iget-object v0, p0, Lc8/jlg;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v2, v0}, Lc8/Vlg;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lc8/jlg;->k:Lc8/Vlg;

    .line 226
    iget-object v0, p0, Lc8/jlg;->k:Lc8/Vlg;

    invoke-virtual {v0, v1}, Lc8/Vlg;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lc8/jlg;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lc8/jlg;->j:Landroid/widget/FrameLayout;

    .line 229
    const/16 v0, 0x11

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 230
    iget-object v0, p0, Lc8/jlg;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    iget-object v0, p0, Lc8/jlg;->j:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lc8/jlg;->k:Lc8/Vlg;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 232
    iget-object v0, p0, Lc8/jlg;->j:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lc8/jlg;->setContentView(Landroid/view/View;)V

    .line 234
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-static {p0, p1}, Lc8/jlg;->c(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lc8/jlg;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lc8/jlg;->l:Landroid/os/Handler;

    return-object v0
.end method

.method private b()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 276
    iget-object v0, p0, Lc8/jlg;->k:Lc8/Vlg;

    invoke-virtual {v0, v3}, Lc8/Vlg;->setVerticalScrollBarEnabled(Z)V

    .line 277
    iget-object v0, p0, Lc8/jlg;->k:Lc8/Vlg;

    invoke-virtual {v0, v3}, Lc8/Vlg;->setHorizontalScrollBarEnabled(Z)V

    .line 278
    iget-object v0, p0, Lc8/jlg;->k:Lc8/Vlg;

    new-instance v1, Lc8/flg;

    invoke-direct {v1, p0, v5}, Lc8/flg;-><init>(Lc8/jlg;Lc8/elg;)V

    invoke-virtual {v0, v1}, Lc8/Vlg;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 279
    iget-object v0, p0, Lc8/jlg;->k:Lc8/Vlg;

    iget-object v1, p0, Lc8/jlg;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Lc8/Vlg;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 280
    iget-object v0, p0, Lc8/jlg;->k:Lc8/Vlg;

    invoke-virtual {v0}, Lc8/Vlg;->clearFormData()V

    .line 283
    iget-object v0, p0, Lc8/jlg;->k:Lc8/Vlg;

    invoke-virtual {v0}, Lc8/Vlg;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 284
    if-nez v1, :cond_0

    .line 313
    :goto_0
    return-void

    .line 287
    :cond_0
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 288
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 290
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 293
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 294
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 295
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 297
    sget-object v0, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 298
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 300
    iget-object v0, p0, Lc8/jlg;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/jlg;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 301
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 302
    iget-object v0, p0, Lc8/jlg;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "databases"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 305
    :cond_1
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 307
    iget-object v0, p0, Lc8/jlg;->a:Lc8/zlg;

    new-instance v1, Lc8/glg;

    invoke-direct {v1, p0, v5}, Lc8/glg;-><init>(Lc8/jlg;Lc8/elg;)V

    const-string/jumbo v2, "sdk_js_if"

    invoke-virtual {v0, v1, v2}, Lc8/zlg;->a(Lc8/llg;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lc8/jlg;->k:Lc8/Vlg;

    iget-object v1, p0, Lc8/jlg;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc8/Vlg;->loadUrl(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lc8/jlg;->k:Lc8/Vlg;

    sget-object v1, Lc8/jlg;->c:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lc8/Vlg;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    iget-object v0, p0, Lc8/jlg;->k:Lc8/Vlg;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lc8/Vlg;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lc8/jlg;->k:Lc8/Vlg;

    invoke-virtual {v0}, Lc8/Vlg;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    goto :goto_0
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-static {p0, p1}, Lc8/jlg;->d(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lc8/jlg;)Lc8/hlg;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lc8/jlg;->h:Lc8/hlg;

    return-object v0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 472
    :try_start_0
    invoke-static {p1}, Lc8/umg;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 473
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 475
    const-string/jumbo v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 477
    if-nez v1, :cond_2

    .line 478
    sget-object v1, Lc8/jlg;->d:Landroid/widget/Toast;

    if-nez v1, :cond_1

    .line 479
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lc8/jlg;->d:Landroid/widget/Toast;

    .line 486
    :goto_0
    sget-object v0, Lc8/jlg;->d:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 502
    :cond_0
    :goto_1
    return-void

    .line 482
    :cond_1
    sget-object v1, Lc8/jlg;->d:Landroid/widget/Toast;

    sget-object v2, Lc8/jlg;->d:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 483
    sget-object v1, Lc8/jlg;->d:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 484
    sget-object v0, Lc8/jlg;->d:Landroid/widget/Toast;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 498
    :catch_0
    move-exception v0

    .line 500
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 487
    :cond_2
    if-ne v1, v3, :cond_0

    .line 488
    :try_start_1
    sget-object v1, Lc8/jlg;->d:Landroid/widget/Toast;

    if-nez v1, :cond_3

    .line 489
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lc8/jlg;->d:Landroid/widget/Toast;

    .line 496
    :goto_2
    sget-object v0, Lc8/jlg;->d:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 492
    :cond_3
    sget-object v1, Lc8/jlg;->d:Landroid/widget/Toast;

    sget-object v2, Lc8/jlg;->d:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 493
    sget-object v1, Lc8/jlg;->d:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 494
    sget-object v0, Lc8/jlg;->d:Landroid/widget/Toast;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method static synthetic d(Lc8/jlg;)Lc8/Vlg;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lc8/jlg;->k:Lc8/Vlg;

    return-object v0
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 506
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    :try_start_0
    invoke-static {p1}, Lc8/umg;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 510
    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 511
    const-string/jumbo v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 512
    const/4 v0, 0x1

    if-ne v1, v0, :cond_4

    .line 513
    sget-object v0, Lc8/jlg;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    sget-object v0, Lc8/jlg;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 514
    :cond_2
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 515
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 516
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lc8/jlg;->f:Ljava/lang/ref/WeakReference;

    .line 518
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 536
    :catch_0
    move-exception v0

    .line 538
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 520
    :cond_3
    :try_start_1
    sget-object v0, Lc8/jlg;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 521
    sget-object v0, Lc8/jlg;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 522
    sget-object v0, Lc8/jlg;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 525
    :cond_4
    if-nez v1, :cond_0

    .line 526
    sget-object v0, Lc8/jlg;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 529
    sget-object v0, Lc8/jlg;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lc8/jlg;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    sget-object v0, Lc8/jlg;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 532
    const/4 v0, 0x0

    sput-object v0, Lc8/jlg;->f:Ljava/lang/ref/WeakReference;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 238
    const-string/jumbo v0, "openSDK_LOG.TDialog"

    const-string/jumbo v1, "--onConsoleMessage--"

    invoke-static {v0, v1}, Lc8/vlg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :try_start_0
    iget-object v0, p0, Lc8/jlg;->a:Lc8/zlg;

    iget-object v1, p0, Lc8/jlg;->k:Lc8/Vlg;

    invoke-virtual {v0, v1, p1}, Lc8/zlg;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lc8/jlg;->h:Lc8/hlg;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lc8/jlg;->h:Lc8/hlg;

    invoke-virtual {v0}, Lc8/hlg;->onCancel()V

    .line 215
    :cond_0
    invoke-super {p0}, Lc8/Nlg;->onBackPressed()V

    .line 216
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc8/jlg;->requestWindowFeature(I)Z

    .line 202
    invoke-super {p0, p1}, Lc8/Nlg;->onCreate(Landroid/os/Bundle;)V

    .line 206
    invoke-direct {p0}, Lc8/jlg;->a()V

    .line 207
    invoke-direct {p0}, Lc8/jlg;->b()V

    .line 208
    return-void
.end method
