.class public Lc8/TGb;
.super Ljava/lang/Object;


# static fields
.field public static final INSTANCE:Lc8/TGb;

.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lc8/TGb;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/TGb;->a:Ljava/lang/String;

    new-instance v0, Lc8/TGb;

    invoke-direct {v0}, Lc8/TGb;-><init>()V

    sput-object v0, Lc8/TGb;->INSTANCE:Lc8/TGb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lc8/TGb;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public show(Landroid/app/Activity;Ljava/lang/String;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Ljava/util/Map;Lcom/alibaba/baichuan/android/trade/b/a;Ljava/util/Map;Z)V
    .locals 11

    sget-object v10, Lc8/vFb;->executorService:Lc8/gIb;

    new-instance v0, Lc8/VGb;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p7

    move-object v4, p3

    move-object/from16 v5, p6

    move-object v6, p4

    move-object/from16 v7, p5

    move-object v8, p2

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lc8/VGb;-><init>(Lc8/TGb;Landroid/app/Activity;Lcom/alibaba/baichuan/android/trade/b/a;Landroid/webkit/WebView;Ljava/util/Map;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v10, v0}, Lc8/gIb;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public show(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/b/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lc8/TGb;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/io/Serializable;Lcom/alibaba/baichuan/android/trade/b/a;)V

    return-void
.end method

.method public show(Landroid/app/Activity;Ljava/lang/String;Ljava/io/Serializable;Lcom/alibaba/baichuan/android/trade/b/a;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/baichuan/android/trade/ui/activity/AlibcWebViewActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_0

    const-string/jumbo v1, "ui_contextParams"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_0
    sput-object p4, Lc8/RGb;->showProcessContext:Lcom/alibaba/baichuan/android/trade/b/a;

    sget v1, Lcom/alibaba/baichuan/android/trade/ui/activity/AlibcWebViewActivity;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
