.class public Lc8/Xlg;
.super Lc8/Nlg;
.source "ProGuard"

# interfaces
.implements Lc8/Tlg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Olg;,
        Lc8/Rlg;,
        Lc8/Slg;,
        Lc8/Plg;,
        Lc8/Qlg;
    }
.end annotation


# static fields
.field static c:Landroid/widget/Toast;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Lc8/Dmg;

.field private f:Lc8/Rlg;

.field private g:Landroid/os/Handler;

.field private h:Lc8/Ulg;

.field private i:Lc8/Vlg;

.field private j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    sput-object v0, Lc8/Xlg;->c:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/Dmg;Lc8/thg;)V
    .locals 6

    .prologue
    .line 74
    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Lc8/Nlg;-><init>(Landroid/content/Context;I)V

    .line 75
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/Xlg;->j:Ljava/lang/ref/WeakReference;

    .line 76
    iput-object p3, p0, Lc8/Xlg;->d:Ljava/lang/String;

    .line 77
    new-instance v0, Lc8/Rlg;

    invoke-virtual {p5}, Lc8/thg;->getAppId()Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lc8/Rlg;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/Dmg;)V

    iput-object v0, p0, Lc8/Xlg;->f:Lc8/Rlg;

    .line 78
    new-instance v0, Lc8/Slg;

    iget-object v1, p0, Lc8/Xlg;->f:Lc8/Rlg;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lc8/Slg;-><init>(Lc8/Xlg;Lc8/Rlg;Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/Xlg;->g:Landroid/os/Handler;

    .line 79
    iput-object p4, p0, Lc8/Xlg;->e:Lc8/Dmg;

    .line 80
    const/high16 v0, 0x43390000    # 185.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lc8/Xlg;->k:I

    .line 81
    const-string/jumbo v0, "openSDK_LOG.PKDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "density="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; webviewHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/Xlg;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/vlg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method private static _1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    move-object v2, p0

    invoke-virtual {v0, v2}, Lcom/ali/mobisecenhance/Invocation;->initThis(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    const/4 v1, 0x1

    move-object v2, p2

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->before_Method_invoke(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Object;

    move-object p1, v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object p2, v2

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual/range {p0 .. p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_1
    :goto_0
    invoke-static {v0, v1, v3}, Lcom/ali/mobisecenhance/ReflectMap;->after_Method_invoke(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method static synthetic a(Lc8/Xlg;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lc8/Xlg;->j:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-static {p0, p1}, Lc8/Xlg;->c(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lc8/Xlg;)Lc8/Rlg;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lc8/Xlg;->f:Lc8/Rlg;

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 102
    new-instance v1, Lc8/Ulg;

    iget-object v0, p0, Lc8/Xlg;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lc8/Ulg;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lc8/Xlg;->h:Lc8/Ulg;

    .line 103
    iget-object v0, p0, Lc8/Xlg;->h:Lc8/Ulg;

    const/high16 v1, 0x66000000

    invoke-virtual {v0, v1}, Lc8/Ulg;->setBackgroundColor(I)V

    .line 104
    iget-object v0, p0, Lc8/Xlg;->h:Lc8/Ulg;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lc8/Ulg;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    new-instance v1, Lc8/Vlg;

    iget-object v0, p0, Lc8/Xlg;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lc8/Vlg;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lc8/Xlg;->i:Lc8/Vlg;

    .line 108
    iget-object v0, p0, Lc8/Xlg;->i:Lc8/Vlg;

    invoke-virtual {v0, v2}, Lc8/Vlg;->setBackgroundColor(I)V

    .line 109
    iget-object v0, p0, Lc8/Xlg;->i:Lc8/Vlg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/Vlg;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 113
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string/jumbo v1, "setLayerType"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/graphics/Paint;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lc8/Xlg;->i:Lc8/Vlg;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lc8/Xlg;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_0
    :goto_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lc8/Xlg;->k:I

    invoke-direct {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 123
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 124
    iget-object v1, p0, Lc8/Xlg;->i:Lc8/Vlg;

    invoke-virtual {v1, v0}, Lc8/Vlg;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    iget-object v0, p0, Lc8/Xlg;->h:Lc8/Ulg;

    iget-object v1, p0, Lc8/Xlg;->i:Lc8/Vlg;

    invoke-virtual {v0, v1}, Lc8/Ulg;->addView(Landroid/view/View;)V

    .line 126
    iget-object v0, p0, Lc8/Xlg;->h:Lc8/Ulg;

    invoke-virtual {v0, p0}, Lc8/Ulg;->a(Lc8/Tlg;)V

    .line 127
    iget-object v0, p0, Lc8/Xlg;->h:Lc8/Ulg;

    invoke-virtual {p0, v0}, Lc8/Xlg;->setContentView(Landroid/view/View;)V

    .line 129
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-static {p0, p1}, Lc8/Xlg;->d(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lc8/Xlg;)Lc8/Vlg;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lc8/Xlg;->i:Lc8/Vlg;

    return-object v0
.end method

.method private c()V
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

    .line 136
    iget-object v0, p0, Lc8/Xlg;->i:Lc8/Vlg;

    invoke-virtual {v0, v3}, Lc8/Vlg;->setVerticalScrollBarEnabled(Z)V

    .line 137
    iget-object v0, p0, Lc8/Xlg;->i:Lc8/Vlg;

    invoke-virtual {v0, v3}, Lc8/Vlg;->setHorizontalScrollBarEnabled(Z)V

    .line 138
    iget-object v0, p0, Lc8/Xlg;->i:Lc8/Vlg;

    new-instance v1, Lc8/Plg;

    invoke-direct {v1, p0, v5}, Lc8/Plg;-><init>(Lc8/Xlg;Lc8/Olg;)V

    invoke-virtual {v0, v1}, Lc8/Vlg;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 139
    iget-object v0, p0, Lc8/Xlg;->i:Lc8/Vlg;

    iget-object v1, p0, Lc8/Xlg;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Lc8/Vlg;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 140
    iget-object v0, p0, Lc8/Xlg;->i:Lc8/Vlg;

    invoke-virtual {v0}, Lc8/Vlg;->clearFormData()V

    .line 143
    iget-object v0, p0, Lc8/Xlg;->i:Lc8/Vlg;

    invoke-virtual {v0}, Lc8/Vlg;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 144
    if-nez v1, :cond_0

    .line 172
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 148
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 150
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 153
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 154
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 155
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 157
    sget-object v0, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 158
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 160
    iget-object v0, p0, Lc8/Xlg;->j:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/Xlg;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 162
    iget-object v0, p0, Lc8/Xlg;->j:Ljava/lang/ref/WeakReference;

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

    .line 165
    :cond_1
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 167
    iget-object v0, p0, Lc8/Xlg;->a:Lc8/zlg;

    new-instance v1, Lc8/Qlg;

    invoke-direct {v1, p0, v5}, Lc8/Qlg;-><init>(Lc8/Xlg;Lc8/Olg;)V

    const-string/jumbo v2, "sdk_js_if"

    invoke-virtual {v0, v1, v2}, Lc8/zlg;->a(Lc8/llg;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lc8/Xlg;->i:Lc8/Vlg;

    invoke-virtual {v0}, Lc8/Vlg;->clearView()V

    .line 170
    iget-object v0, p0, Lc8/Xlg;->i:Lc8/Vlg;

    iget-object v1, p0, Lc8/Xlg;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc8/Vlg;->loadUrl(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lc8/Xlg;->i:Lc8/Vlg;

    invoke-virtual {v0}, Lc8/Vlg;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 302
    :try_start_0
    invoke-static {p1}, Lc8/umg;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 303
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 305
    const-string/jumbo v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    if-nez v1, :cond_2

    .line 308
    sget-object v1, Lc8/Xlg;->c:Landroid/widget/Toast;

    if-nez v1, :cond_1

    .line 309
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lc8/Xlg;->c:Landroid/widget/Toast;

    .line 316
    :goto_0
    sget-object v0, Lc8/Xlg;->c:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 332
    :cond_0
    :goto_1
    return-void

    .line 312
    :cond_1
    sget-object v1, Lc8/Xlg;->c:Landroid/widget/Toast;

    sget-object v2, Lc8/Xlg;->c:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 313
    sget-object v1, Lc8/Xlg;->c:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 314
    sget-object v0, Lc8/Xlg;->c:Landroid/widget/Toast;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    .line 330
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 317
    :cond_2
    if-ne v1, v3, :cond_0

    .line 318
    :try_start_1
    sget-object v1, Lc8/Xlg;->c:Landroid/widget/Toast;

    if-nez v1, :cond_3

    .line 319
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lc8/Xlg;->c:Landroid/widget/Toast;

    .line 326
    :goto_2
    sget-object v0, Lc8/Xlg;->c:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 322
    :cond_3
    sget-object v1, Lc8/Xlg;->c:Landroid/widget/Toast;

    sget-object v2, Lc8/Xlg;->c:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 323
    sget-object v1, Lc8/Xlg;->c:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 324
    sget-object v0, Lc8/Xlg;->c:Landroid/widget/Toast;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 336
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    :try_start_0
    invoke-static {p1}, Lc8/umg;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 340
    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 341
    const-string/jumbo v1, "msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 366
    :catch_0
    move-exception v0

    .line 368
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lc8/Xlg;->i:Lc8/Vlg;

    invoke-virtual {v0}, Lc8/Vlg;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lc8/Xlg;->k:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 518
    const-string/jumbo v0, "openSDK_LOG.PKDialog"

    const-string/jumbo v1, "onKeyboardHidden keyboard hide"

    invoke-static {v0, v1}, Lc8/vlg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lc8/Xlg;->j:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Xlg;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 501
    iget v0, p0, Lc8/Xlg;->k:I

    if-ge p1, v0, :cond_1

    const/4 v1, 0x2

    iget-object v0, p0, Lc8/Xlg;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_1

    .line 504
    iget-object v0, p0, Lc8/Xlg;->i:Lc8/Vlg;

    invoke-virtual {v0}, Lc8/Vlg;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 509
    :cond_0
    :goto_0
    const-string/jumbo v0, "openSDK_LOG.PKDialog"

    const-string/jumbo v1, "onKeyboardShown keyboard show"

    invoke-static {v0, v1}, Lc8/vlg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    return-void

    .line 506
    :cond_1
    iget-object v0, p0, Lc8/Xlg;->i:Lc8/Vlg;

    invoke-virtual {v0}, Lc8/Vlg;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lc8/Xlg;->k:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 523
    const-string/jumbo v0, "openSDK_LOG.PKDialog"

    const-string/jumbo v1, "--onConsoleMessage--"

    invoke-static {v0, v1}, Lc8/vlg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    :try_start_0
    iget-object v0, p0, Lc8/Xlg;->a:Lc8/zlg;

    iget-object v1, p0, Lc8/Xlg;->i:Lc8/Vlg;

    invoke-virtual {v0, v1, p1}, Lc8/zlg;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Lc8/Nlg;->onBackPressed()V

    .line 87
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 91
    invoke-virtual {p0, v2}, Lc8/Xlg;->requestWindowFeature(I)Z

    .line 92
    invoke-super {p0, p1}, Lc8/Nlg;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lc8/Xlg;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 95
    invoke-virtual {p0}, Lc8/Xlg;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 96
    invoke-direct {p0}, Lc8/Xlg;->b()V

    .line 97
    invoke-direct {p0}, Lc8/Xlg;->c()V

    .line 98
    return-void
.end method
