.class public final Lcom/uc/webview/export/internal/SDKFactory;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/SDKFactory$a;,
        Lcom/uc/webview/export/internal/SDKFactory$b;
    }
.end annotation


# static fields
.field public static A:Ljava/lang/String; = null

.field public static B:Lcom/uc/webview/export/utility/SetupTask; = null

.field static C:Z = false

.field private static D:I = 0x0

.field private static E:Lcom/uc/webview/export/internal/interfaces/IGlobalSettings; = null

.field private static F:Lcom/uc/webview/export/internal/AbstractWebViewFactory; = null

.field private static G:I = 0x0

.field private static H:Ljava/lang/String; = null

.field private static final I:Ljava/lang/Object;

.field private static J:Z = false

.field public static a:Lcom/uc/webview/export/extension/NotAvailableUCListener; = null

.field public static b:Landroid/webkit/ValueCallback; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public static c:Ljava/lang/ClassLoader; = null

.field public static d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit; = null

.field public static e:Landroid/content/Context; = null

.field public static f:Z = false

.field public static g:Ljava/lang/String; = null

.field public static final getCoreType:I = 0x2724
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation
.end field

.field public static final getGlobalSettings:I = 0x2726
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation
.end field

.field public static h:I = 0x0

.field public static final handlePerformanceTests:I = 0x272e
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation
.end field

.field public static i:J = 0x0L

.field public static final isInited:I = 0x271a
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation
.end field

.field public static j:I = 0x0

.field public static k:Z = false

.field public static l:Z = false

.field public static m:Z = false

.field public static n:I = 0x0

.field public static o:Lcom/uc/webview/export/extension/InitCallback; = null

.field public static p:Z = false

.field public static q:Z = false

.field public static r:Z = false

.field public static s:Z = false

.field public static final setBrowserFlag:I = 0x2719
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation
.end field

.field public static final setCoreType:I = 0x2725
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation
.end field

.field public static final setWebViewFactory:I = 0x2718
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation
.end field

.field public static t:Ljava/lang/String;

.field public static u:Ljava/lang/String;

.field public static v:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static w:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static x:J

.field public static y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 70
    sput-object v3, Lcom/uc/webview/export/internal/SDKFactory;->a:Lcom/uc/webview/export/extension/NotAvailableUCListener;

    .line 84
    const-class v0, Lcom/uc/webview/export/internal/SDKFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->c:Ljava/lang/ClassLoader;

    .line 86
    sput-object v3, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    .line 88
    sput-object v3, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    .line 94
    sput v2, Lcom/uc/webview/export/internal/SDKFactory;->D:I

    .line 96
    sput-boolean v2, Lcom/uc/webview/export/internal/SDKFactory;->f:Z

    .line 98
    sput-object v3, Lcom/uc/webview/export/internal/SDKFactory;->E:Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 99
    new-instance v0, Lcom/uc/webview/export/internal/SDKFactory$a;

    invoke-direct {v0, v2}, Lcom/uc/webview/export/internal/SDKFactory$a;-><init>(B)V

    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->F:Lcom/uc/webview/export/internal/AbstractWebViewFactory;

    .line 103
    sput v1, Lcom/uc/webview/export/internal/SDKFactory;->h:I

    .line 105
    sput v1, Lcom/uc/webview/export/internal/SDKFactory;->G:I

    .line 106
    const-wide/16 v0, 0xfa0

    sput-wide v0, Lcom/uc/webview/export/internal/SDKFactory;->i:J

    .line 108
    sput v4, Lcom/uc/webview/export/internal/SDKFactory;->j:I

    .line 110
    sput-boolean v2, Lcom/uc/webview/export/internal/SDKFactory;->k:Z

    .line 111
    sput-boolean v2, Lcom/uc/webview/export/internal/SDKFactory;->l:Z

    .line 113
    sput-boolean v2, Lcom/uc/webview/export/internal/SDKFactory;->m:Z

    .line 123
    sput v2, Lcom/uc/webview/export/internal/SDKFactory;->n:I

    .line 127
    sput-boolean v2, Lcom/uc/webview/export/internal/SDKFactory;->p:Z

    .line 128
    sput-boolean v2, Lcom/uc/webview/export/internal/SDKFactory;->q:Z

    .line 130
    sput-boolean v2, Lcom/uc/webview/export/internal/SDKFactory;->r:Z

    .line 132
    sput-boolean v4, Lcom/uc/webview/export/internal/SDKFactory;->s:Z

    .line 134
    sput-object v3, Lcom/uc/webview/export/internal/SDKFactory;->t:Ljava/lang/String;

    .line 135
    sput-object v3, Lcom/uc/webview/export/internal/SDKFactory;->u:Ljava/lang/String;

    .line 137
    sput-object v3, Lcom/uc/webview/export/internal/SDKFactory;->v:Landroid/webkit/ValueCallback;

    .line 138
    sput-object v3, Lcom/uc/webview/export/internal/SDKFactory;->w:Landroid/webkit/ValueCallback;

    .line 171
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/uc/webview/export/internal/SDKFactory;->x:J

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->y:Ljava/util/Map;

    .line 175
    sput-object v3, Lcom/uc/webview/export/internal/SDKFactory;->z:Ljava/util/Map;

    .line 176
    sput-object v3, Lcom/uc/webview/export/internal/SDKFactory;->H:Ljava/lang/String;

    .line 183
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->I:Ljava/lang/Object;

    .line 185
    sput-object v3, Lcom/uc/webview/export/internal/SDKFactory;->A:Ljava/lang/String;

    .line 189
    sput-boolean v2, Lcom/uc/webview/export/internal/SDKFactory;->J:Z

    .line 191
    sput-boolean v2, Lcom/uc/webview/export/internal/SDKFactory;->C:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->D:I

    return v0
.end method

.method public static a(Lcom/uc/webview/export/internal/setup/UCMPackageInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1847
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1848
    const-string/jumbo v0, "Type:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1849
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1850
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->pkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1851
    const-string/jumbo v0, "\nPackage Name:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->pkgName:Ljava/lang/String;

    .line 1852
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1854
    :cond_0
    const-string/jumbo v0, "\nSo files path:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->soDirPath:Ljava/lang/String;

    .line 1855
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\nDex files:\n"

    .line 1856
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->sdkShellModule:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1857
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\n"

    .line 1858
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->browserIFModule:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1859
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\n"

    .line 1860
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->coreImplModule:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1861
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1862
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1871
    sput-object p0, Lcom/uc/webview/export/internal/SDKFactory;->g:Ljava/lang/String;

    .line 1872
    return-void
.end method

.method public static a(Z)V
    .locals 3

    .prologue
    .line 1880
    const/16 v0, 0x2726

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 1881
    if-eqz v0, :cond_0

    .line 1882
    const-string/jumbo v2, "apollo_str"

    if-eqz p0, :cond_1

    const-string/jumbo v1, "ap_cache3=1&ap_cache=1&ap_cache_preload=1&ap_enable_preload2=1&ap_enable_cache2=1&ap_next_buf=7000&ap_max_buf=15000"

    :goto_0
    invoke-interface {v0, v2, v1}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1885
    :cond_0
    return-void

    .line 1882
    :cond_1
    const-string/jumbo v1, "ap_cache3=0&ap_cache=0&ap_cache_preload=0&ap_enable_preload2=0&ap_enable_cache2=0"

    goto :goto_0
.end method

.method public static varargs invoke(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation

    .prologue
    const/16 v8, 0x272d

    const/4 v7, 0x0

    const/4 v10, 0x2

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 283
    packed-switch p0, :pswitch_data_0

    .line 1157
    :cond_0
    :goto_0
    return-object v7

    .line 285
    :pswitch_0
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 286
    sget-wide v2, Lcom/uc/webview/export/internal/SDKFactory;->x:J

    or-long/2addr v0, v2

    sput-wide v0, Lcom/uc/webview/export/internal/SDKFactory;->x:J

    goto :goto_0

    .line 290
    :pswitch_1
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 291
    sget-wide v2, Lcom/uc/webview/export/internal/SDKFactory;->x:J

    const-wide/16 v4, -0x1

    xor-long/2addr v0, v4

    and-long/2addr v0, v2

    sput-wide v0, Lcom/uc/webview/export/internal/SDKFactory;->x:J

    goto :goto_0

    .line 295
    :pswitch_2
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 296
    sget-wide v4, Lcom/uc/webview/export/internal/SDKFactory;->x:J

    and-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    move v0, v3

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_1

    .line 300
    :pswitch_3
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/String;

    .line 301
    if-eqz v0, :cond_2

    const-string/jumbo v1, "JSON_CD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 302
    const-string/jumbo v1, "JSON_CD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 303
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 304
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 307
    :cond_2
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "JSON_CD"

    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "pub_key"

    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->H:Ljava/lang/String;

    .line 316
    :try_start_0
    const-string/jumbo v1, "com.uc.webview.export.cd.Utils"

    const-string/jumbo v2, "addParamCD"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 329
    :pswitch_4
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/String;

    .line 330
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "pub_key"

    .line 331
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    const/4 v1, 0x1

    :try_start_1
    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_15

    .line 338
    :try_start_2
    const-string/jumbo v2, "com.uc.webview.export.cd.Utils"

    const-string/jumbo v3, "addMiddlewareCD"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    invoke-static {v2, v3, v4, v5}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 351
    :pswitch_5
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/String;

    .line 353
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 354
    sput-object v7, Lcom/uc/webview/export/internal/SDKFactory;->z:Ljava/util/Map;

    goto/16 :goto_0

    .line 356
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 357
    const-string/jumbo v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 358
    array-length v4, v2

    move v0, v6

    :goto_2
    if-ge v0, v4, :cond_5

    aget-object v5, v2, v0

    .line 359
    const-string/jumbo v8, "="

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 360
    array-length v8, v5

    if-ne v8, v10, :cond_4

    .line 361
    aget-object v8, v5, v6

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    aget-object v5, v5, v3

    invoke-interface {v1, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 364
    :cond_5
    const-string/jumbo v0, "tag_test_log"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "CDParam:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 366
    sput-object v1, Lcom/uc/webview/export/internal/SDKFactory;->z:Ljava/util/Map;

    .line 368
    :cond_6
    const/16 v0, 0x2731

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 374
    :pswitch_6
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/String;

    .line 375
    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->z:Ljava/util/Map;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->z:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    goto/16 :goto_0

    .line 379
    :pswitch_7
    sget-object v7, Lcom/uc/webview/export/internal/SDKFactory;->H:Ljava/lang/String;

    goto/16 :goto_0

    .line 383
    :pswitch_8
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->q:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto/16 :goto_0

    .line 387
    :pswitch_9
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/String;

    .line 388
    aget-object v1, p1, v3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 389
    const/16 v2, 0x2715

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 390
    if-nez v0, :cond_7

    move v0, v1

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    .line 394
    :pswitch_a
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/String;

    .line 395
    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->z:Ljava/util/Map;

    if-eqz v1, :cond_8

    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->z:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto/16 :goto_0

    :cond_8
    move v3, v6

    goto :goto_4

    .line 399
    :pswitch_b
    aget-object v0, p1, v6

    check-cast v0, Lcom/uc/webview/export/internal/AbstractWebViewFactory;

    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->F:Lcom/uc/webview/export/internal/AbstractWebViewFactory;

    goto/16 :goto_0

    .line 403
    :pswitch_c
    sput-boolean v3, Lcom/uc/webview/export/internal/SDKFactory;->f:Z

    .line 404
    const-string/jumbo v0, "i"

    const-string/jumbo v1, "SDKFactory"

    invoke-static {v0, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v0

    .line 405
    if-eqz v0, :cond_0

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setBrowserFlag: sIsBrowser="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/uc/webview/export/internal/SDKFactory;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 411
    :pswitch_d
    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->D:I

    if-eqz v0, :cond_9

    :goto_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto/16 :goto_0

    :cond_9
    move v3, v6

    goto :goto_5

    .line 415
    :pswitch_e
    const/16 v0, 0x271a

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory$b;->a()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    :goto_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto/16 :goto_0

    :cond_a
    move v3, v6

    goto :goto_6

    .line 419
    :pswitch_f
    const/16 v0, 0x271a

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    .line 420
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "UC WebView Sdk not inited."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_b
    const/16 v0, 0x2724

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v10, :cond_c

    .line 423
    const-string/jumbo v7, "System WebView"

    goto/16 :goto_0

    .line 425
    :cond_c
    sget-object v7, Lcom/uc/webview/export/internal/SDKFactory;->g:Ljava/lang/String;

    goto/16 :goto_0

    .line 430
    :pswitch_10
    invoke-static {}, Lcom/uc/webview/export/internal/setup/r;->a()V

    .line 431
    aget-object v1, p1, v6

    check-cast v1, Landroid/content/Context;

    .line 432
    aget-object v2, p1, v3

    check-cast v2, Landroid/util/AttributeSet;

    .line 433
    aget-object v3, p1, v10

    check-cast v3, Lcom/uc/webview/export/WebView;

    .line 434
    const/4 v0, 0x3

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 435
    const/4 v0, 0x4

    aget-object v5, p1, v0

    check-cast v5, [I

    .line 437
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    if-nez v0, :cond_d

    .line 438
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    .line 440
    :cond_d
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->f:Z

    if-eqz v0, :cond_e

    .line 441
    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {v8, v0}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    :cond_e
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->b:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_f

    .line 445
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->b:Landroid/webkit/ValueCallback;

    new-instance v6, Landroid/util/Pair;

    const-string/jumbo v8, "sdk_wv_b"

    invoke-direct {v6, v8, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v6}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 447
    :cond_f
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->F:Lcom/uc/webview/export/internal/AbstractWebViewFactory;

    invoke-virtual/range {v0 .. v5}, Lcom/uc/webview/export/internal/AbstractWebViewFactory;->createWebView(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/uc/webview/export/WebView;Z[I)Lcom/uc/webview/export/internal/interfaces/IWebView;

    move-result-object v0

    .line 448
    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->b:Landroid/webkit/ValueCallback;

    if-eqz v1, :cond_10

    .line 449
    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->b:Landroid/webkit/ValueCallback;

    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "sdk_wv_a"

    invoke-direct {v2, v3, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 452
    :cond_10
    invoke-static {}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->upload()V

    move-object v7, v0

    .line 453
    goto/16 :goto_0

    .line 458
    :pswitch_11
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 459
    aget-object v1, p1, v3

    check-cast v1, Lcom/uc/webview/export/internal/interfaces/IWebView;

    .line 460
    aget-object v2, p1, v10

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 462
    sget-object v3, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    if-nez v3, :cond_11

    .line 463
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    .line 465
    :cond_11
    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {v8, v0}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    if-eq v2, v10, :cond_0

    .line 469
    new-instance v7, Lcom/uc/webview/export/extension/UCExtension;

    invoke-direct {v7, v1}, Lcom/uc/webview/export/extension/UCExtension;-><init>(Lcom/uc/webview/export/internal/interfaces/IWebView;)V

    goto/16 :goto_0

    .line 475
    :pswitch_12
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 476
    aget-object v0, p1, v3

    check-cast v0, Landroid/content/Context;

    .line 478
    sget-object v2, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    if-nez v2, :cond_12

    .line 479
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    .line 481
    :cond_12
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v8, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    if-ne v1, v10, :cond_13

    .line 483
    new-instance v7, Lcom/uc/webview/export/internal/android/v;

    invoke-direct {v7}, Lcom/uc/webview/export/internal/android/v;-><init>()V

    goto/16 :goto_0

    .line 485
    :cond_13
    new-instance v7, Lcom/uc/webview/export/internal/uc/c;

    invoke-direct {v7, v0}, Lcom/uc/webview/export/internal/uc/c;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 491
    :pswitch_13
    const/16 v0, 0x2724

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v10, :cond_0

    .line 494
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->getUCMobileWebKit()Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    move-result-object v7

    goto/16 :goto_0

    .line 500
    :pswitch_14
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 502
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v8, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    if-ne v0, v10, :cond_14

    .line 504
    new-instance v7, Lcom/uc/webview/export/internal/android/q;

    invoke-direct {v7}, Lcom/uc/webview/export/internal/android/q;-><init>()V

    goto/16 :goto_0

    .line 506
    :cond_14
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->l()Lcom/uc/webview/export/internal/interfaces/IWebStorage;

    move-result-object v7

    goto/16 :goto_0

    .line 512
    :pswitch_15
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 514
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v8, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    if-ne v0, v10, :cond_15

    .line 516
    new-instance v7, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;

    invoke-direct {v7}, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;-><init>()V

    goto/16 :goto_0

    .line 518
    :cond_15
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->getCookieManager()Lcom/uc/webview/export/internal/interfaces/ICookieManager;

    move-result-object v7

    goto/16 :goto_0

    .line 524
    :pswitch_16
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 526
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v8, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    if-eq v0, v10, :cond_0

    .line 530
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->getServiceWorkerController()Lcom/uc/webview/export/internal/interfaces/IServiceWorkerController;

    move-result-object v7

    goto/16 :goto_0

    .line 536
    :pswitch_17
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 538
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v8, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    if-ne v0, v10, :cond_16

    .line 540
    new-instance v7, Lcom/uc/webview/export/internal/android/b;

    invoke-direct {v7}, Lcom/uc/webview/export/internal/android/b;-><init>()V

    goto/16 :goto_0

    .line 542
    :cond_16
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->k()Lcom/uc/webview/export/internal/interfaces/IGeolocationPermissions;

    move-result-object v7

    goto/16 :goto_0

    .line 548
    :pswitch_18
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 550
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v8, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    if-ne v0, v10, :cond_17

    .line 552
    new-instance v7, Lcom/uc/webview/export/internal/android/f;

    invoke-direct {v7}, Lcom/uc/webview/export/internal/android/f;-><init>()V

    goto/16 :goto_0

    .line 554
    :cond_17
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->m()Lcom/uc/webview/export/internal/interfaces/IMimeTypeMap;

    move-result-object v7

    goto/16 :goto_0

    .line 560
    :pswitch_19
    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {v8, v0}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->D:I

    if-nez v0, :cond_18

    .line 563
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto/16 :goto_0

    .line 565
    :cond_18
    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->D:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto/16 :goto_0

    .line 570
    :pswitch_1a
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 572
    if-eqz v0, :cond_0

    .line 573
    sput v0, Lcom/uc/webview/export/internal/SDKFactory;->D:I

    .line 574
    const/16 v1, 0x2729

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    const-string/jumbo v1, "i"

    const-string/jumbo v2, "SDKFactory"

    invoke-static {v1, v2}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v1

    .line 577
    if-eqz v1, :cond_0

    .line 578
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setCoreType: type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Throwable;

    invoke-virtual {v1, v0, v2}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 585
    :pswitch_1b
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->E:Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    if-eqz v0, :cond_19

    .line 586
    sget-object v7, Lcom/uc/webview/export/internal/SDKFactory;->E:Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    goto/16 :goto_0

    .line 588
    :cond_19
    const/16 v0, 0x2724

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v10, :cond_0

    .line 591
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->j()Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    move-result-object v7

    .line 592
    sput-object v7, Lcom/uc/webview/export/internal/SDKFactory;->E:Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    goto/16 :goto_0

    .line 598
    :pswitch_1c
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 600
    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    if-nez v1, :cond_1a

    .line 601
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    .line 604
    :cond_1a
    sget-boolean v1, Lcom/uc/webview/export/internal/SDKFactory;->f:Z

    if-nez v1, :cond_0

    const/16 v1, 0x271a

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 608
    const-class v1, Lcom/uc/webview/export/internal/SDKFactory;

    monitor-enter v1

    .line 609
    :try_start_3
    sget-boolean v2, Lcom/uc/webview/export/internal/SDKFactory;->p:Z

    if-nez v2, :cond_1b

    .line 610
    sget-object v2, Lcom/uc/webview/export/internal/SDKFactory;->B:Lcom/uc/webview/export/utility/SetupTask;

    if-eqz v2, :cond_1c

    .line 611
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->B:Lcom/uc/webview/export/utility/SetupTask;

    invoke-virtual {v0}, Lcom/uc/webview/export/utility/SetupTask;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    .line 620
    :cond_1b
    :goto_7
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 622
    const/16 v0, 0x273d

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 613
    :cond_1c
    :try_start_4
    new-instance v2, Lcom/uc/webview/export/internal/setup/ak;

    invoke-direct {v2}, Lcom/uc/webview/export/internal/setup/ak;-><init>()V

    const-string/jumbo v3, "CONTEXT"

    .line 614
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/uc/webview/export/internal/setup/ak;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    const-string/jumbo v2, "AC"

    const-string/jumbo v3, "true"

    .line 615
    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/o;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    const-string/jumbo v2, "VIDEO_AC"

    const-string/jumbo v3, "false"

    .line 616
    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/o;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    .line 617
    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/o;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    goto :goto_7

    .line 620
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 627
    :pswitch_1d
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 629
    sget-object v2, Lcom/uc/webview/export/internal/SDKFactory;->I:Ljava/lang/Object;

    monitor-enter v2

    .line 631
    :try_start_5
    sget-object v3, Lcom/uc/webview/export/internal/SDKFactory;->I:Ljava/lang/Object;

    invoke-virtual {v3, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 635
    :goto_8
    :try_start_6
    monitor-exit v2

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 632
    :catch_2
    move-exception v0

    .line 633
    :try_start_7
    const-string/jumbo v1, "tag_test_log"

    const-string/jumbo v3, "getLock"

    invoke-static {v1, v3, v0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_8

    .line 636
    :pswitch_1e
    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->I:Ljava/lang/Object;

    monitor-enter v1

    .line 642
    :try_start_8
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->I:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 646
    :goto_9
    :try_start_9
    monitor-exit v1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0

    .line 643
    :catch_3
    move-exception v0

    .line 644
    :try_start_a
    const-string/jumbo v2, "tag_test_log"

    const-string/jumbo v3, "releaseLock"

    invoke-static {v2, v3, v0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_9

    .line 647
    :pswitch_1f
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1d

    :goto_a
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto/16 :goto_0

    :cond_1d
    move v3, v6

    goto :goto_a

    .line 656
    :pswitch_20
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/Runnable;

    .line 658
    invoke-static {v0}, Lcom/uc/webview/export/internal/SDKFactory$b;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 663
    :pswitch_21
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 665
    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    if-nez v1, :cond_1e

    .line 666
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    .line 668
    :cond_1e
    sget-boolean v1, Lcom/uc/webview/export/internal/SDKFactory;->J:Z

    if-nez v1, :cond_0

    .line 671
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Landroid/content/Context;)V

    .line 672
    sput-boolean v3, Lcom/uc/webview/export/internal/SDKFactory;->J:Z

    goto/16 :goto_0

    .line 677
    :pswitch_22
    const/16 v0, 0x271b

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 678
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->f:Z

    if-eqz v0, :cond_1f

    const/16 v0, 0x271a

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 679
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->o:Lcom/uc/webview/export/extension/InitCallback;

    if-eqz v0, :cond_1f

    .line 680
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->o:Lcom/uc/webview/export/extension/InitCallback;

    invoke-interface {v0}, Lcom/uc/webview/export/extension/InitCallback;->notInit()V

    .line 684
    :cond_1f
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->f:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/uc/webview/export/Build;->IS_INTERNATIONAL_VERSION:Z

    if-nez v0, :cond_0

    .line 688
    :cond_20
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->p:Z

    if-nez v0, :cond_21

    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->B:Lcom/uc/webview/export/utility/SetupTask;

    if-eqz v0, :cond_21

    .line 689
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->B:Lcom/uc/webview/export/utility/SetupTask;

    invoke-virtual {v0}, Lcom/uc/webview/export/utility/SetupTask;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    .line 692
    :cond_21
    const/16 v0, 0x273d

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 698
    :pswitch_23
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/String;

    .line 700
    const/16 v1, 0x2724

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v10, :cond_0

    .line 701
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/CoreFactory;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 707
    :pswitch_24
    const/16 v0, 0x2724

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v10, :cond_0

    .line 710
    const/16 v0, 0x271f

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    .line 712
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "sTrafficSent"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 713
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v2

    .line 715
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v4, "sTrafficReceived"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 716
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v4

    .line 717
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    move-object v7, v0

    goto/16 :goto_0

    .line 718
    :catch_4
    move-exception v0

    .line 719
    const-string/jumbo v1, "tag_test_log"

    const-string/jumbo v2, "getTraffic"

    invoke-static {v1, v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 727
    :pswitch_25
    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->G:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto/16 :goto_0

    .line 732
    :pswitch_26
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 734
    sput v0, Lcom/uc/webview/export/internal/SDKFactory;->G:I

    goto/16 :goto_0

    .line 739
    :pswitch_27
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/String;

    .line 741
    const/16 v1, 0x2724

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v10, :cond_0

    .line 745
    :try_start_c
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/CoreFactory;->b(Ljava/lang/String;)Lcom/uc/webview/export/WebResourceResponse;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5

    move-result-object v7

    goto/16 :goto_0

    .line 747
    :catch_5
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "The getResponseByUrl() is not support in this version."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 754
    :pswitch_28
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 755
    aget-object v1, p1, v3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 757
    sget-object v2, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    if-nez v2, :cond_22

    .line 758
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    .line 760
    :cond_22
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v8, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    if-ne v1, v10, :cond_0

    .line 762
    new-instance v7, Lcom/uc/webview/export/internal/android/u;

    invoke-direct {v7, v0}, Lcom/uc/webview/export/internal/android/u;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 771
    :pswitch_29
    const/16 v0, 0x2716

    new-array v1, v10, [Ljava/lang/Object;

    const-string/jumbo v2, "apollo"

    aput-object v2, v1, v6

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 772
    if-nez v1, :cond_23

    .line 773
    const/16 v0, 0x2711

    new-array v2, v3, [Ljava/lang/Object;

    const-wide/32 v4, 0x40000

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    :goto_b
    const/16 v0, 0x271a

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    const/16 v0, 0x2726

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 779
    if-eqz v0, :cond_0

    .line 780
    if-nez v1, :cond_24

    .line 781
    const-string/jumbo v1, "tag_test_log"

    const-string/jumbo v2, "sdk cd forbid apollo"

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    const-string/jumbo v1, "sdk_apollo_forbid"

    const-string/jumbo v2, "1"

    invoke-interface {v0, v1, v2}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 775
    :cond_23
    const/16 v0, 0x2712

    new-array v2, v3, [Ljava/lang/Object;

    const-wide/32 v4, 0x40000

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 784
    :cond_24
    const-string/jumbo v1, "sdk_apollo_forbid"

    const-string/jumbo v2, "0"

    invoke-interface {v0, v1, v2}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 792
    :pswitch_2a
    aget-object v0, p1, v6

    check-cast v0, Ljava/util/Map;

    .line 794
    if-eqz v0, :cond_26

    .line 795
    const-string/jumbo v1, "ucPlayerRoot"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 796
    if-eqz v1, :cond_25

    .line 797
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/uc/webview/export/internal/SDKFactory;->t:Ljava/lang/String;

    .line 799
    :cond_25
    const-string/jumbo v1, "ucPlayer"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 800
    if-eqz v0, :cond_26

    .line 801
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->s:Z

    .line 804
    :cond_26
    const-string/jumbo v0, "tag_test_log"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sUseUCPlayer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/uc/webview/export/internal/SDKFactory;->s:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",sUCPlayerSoRoot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/uc/webview/export/internal/SDKFactory;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 809
    :pswitch_2b
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 811
    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    if-nez v1, :cond_27

    .line 812
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    .line 814
    :cond_27
    sget-boolean v1, Lcom/uc/webview/export/internal/SDKFactory;->s:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/uc/webview/export/internal/SDKFactory;->C:Z

    if-nez v1, :cond_0

    const/16 v1, 0x271a

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/uc/webview/export/internal/SDKFactory;->D:I

    if-eq v1, v10, :cond_0

    .line 815
    const/16 v1, 0x2734

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 817
    if-eqz v0, :cond_0

    .line 818
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 819
    const-string/jumbo v1, "tag_test_log"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ucPlayerDir:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    :try_start_d
    const-string/jumbo v1, "com.uc.apollo.Settings"

    const/4 v3, 0x1

    sget-object v4, Lcom/uc/webview/export/internal/SDKFactory;->c:Ljava/lang/ClassLoader;

    invoke-static {v1, v3, v4}, Lcom/ali/mobisecenhance/ReflectMap;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 823
    const-string/jumbo v3, "setApolloSoPath"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v1, v3, v4, v5}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invoke(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 830
    :goto_c
    :try_start_e
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, ".lock"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 831
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 832
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 833
    :try_start_f
    const-string/jumbo v1, "2.6.0.167"

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_14
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    move-object v1, v0

    .line 838
    :goto_d
    :try_start_10
    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 841
    :goto_e
    sput-object v2, Lcom/uc/webview/export/internal/SDKFactory;->u:Ljava/lang/String;

    .line 842
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->C:Z
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_9
    .catchall {:try_start_10 .. :try_end_10} :catchall_d

    .line 846
    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 825
    :catch_6
    move-exception v1

    :try_start_11
    const-string/jumbo v1, "com.uc.media.interfaces.IApolloHelper$Global"

    const/4 v3, 0x1

    sget-object v4, Lcom/uc/webview/export/internal/SDKFactory;->c:Ljava/lang/ClassLoader;

    invoke-static {v1, v3, v4}, Lcom/ali/mobisecenhance/ReflectMap;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 826
    const-string/jumbo v3, "setApolloSoPath"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v1, v3, v4, v5}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invoke(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    goto :goto_c

    .line 843
    :catch_7
    move-exception v0

    move-object v1, v7

    .line 844
    :goto_f
    :try_start_12
    const-string/jumbo v2, "tag_test_log"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setupForUCPlayer:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/uc/webview/export/internal/SDKFactory;->c:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_d

    .line 846
    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 838
    :catch_8
    move-exception v0

    move-object v0, v7

    :goto_10
    :try_start_13
    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_e

    move-object v1, v0

    .line 839
    goto :goto_e

    .line 838
    :catchall_3
    move-exception v0

    move-object v1, v7

    :goto_11
    :try_start_14
    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    throw v0
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_9
    .catchall {:try_start_14 .. :try_end_14} :catchall_d

    .line 843
    :catch_9
    move-exception v0

    goto :goto_f

    .line 846
    :catchall_4
    move-exception v0

    :goto_12
    invoke-static {v7}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    throw v0

    .line 854
    :pswitch_2c
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 855
    aget-object v1, p1, v3

    check-cast v1, Ljava/lang/String;

    .line 857
    sget-object v2, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    if-nez v2, :cond_28

    .line 858
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    .line 863
    :cond_28
    const/4 v2, 0x2

    :try_start_15
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 864
    const-string/jumbo v1, "sdk_2"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 865
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 866
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_a
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    .line 867
    :try_start_16
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v2, 0x1f4

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_11
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    .line 868
    :try_start_17
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 869
    if-eqz v2, :cond_29

    .line 870
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 871
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 872
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 873
    const-string/jumbo v3, "tag_test_log"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setupUCPlayerForThin:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    const-string/jumbo v3, "com.uc.media.interfaces.IApolloHelper$Global"

    const/4 v4, 0x1

    sget-object v5, Lcom/uc/webview/export/internal/SDKFactory;->c:Ljava/lang/ClassLoader;

    invoke-static {v3, v4, v5}, Lcom/ali/mobisecenhance/ReflectMap;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 876
    const-string/jumbo v4, "setApolloSoPath"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v5, v7

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v3, v4, v5, v7}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invoke(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    const/4 v2, 0x1

    sput-boolean v2, Lcom/uc/webview/export/internal/SDKFactory;->C:Z

    .line 880
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_12
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    move-result-object v7

    .line 887
    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 888
    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :cond_29
    move-object v7, v1

    .line 887
    :goto_13
    invoke-static {v7}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 888
    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 890
    :goto_14
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto/16 :goto_0

    .line 884
    :catch_a
    move-exception v0

    move-object v1, v7

    .line 885
    :goto_15
    :try_start_18
    const-string/jumbo v2, "tag_test_log"

    const-string/jumbo v3, "setupUCPlayerForThin"

    invoke-static {v2, v3, v0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    .line 887
    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 888
    invoke-static {v7}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    goto :goto_14

    .line 887
    :catchall_5
    move-exception v0

    move-object v1, v7

    :goto_16
    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 888
    invoke-static {v7}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    throw v0

    .line 895
    :pswitch_2d
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 897
    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    if-nez v1, :cond_2a

    .line 898
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    .line 901
    :cond_2a
    const/4 v1, 0x1

    :try_start_19
    new-array v2, v1, [Ljava/io/File;

    const/4 v1, 0x0

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 902
    invoke-static {v0}, Lcom/uc/webview/export/utility/download/UpdateTask;->getUCPlayerRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 905
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 906
    if-eqz v3, :cond_4a

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 907
    const/16 v0, 0x273d

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 909
    new-instance v1, Ljava/io/File;

    const-string/jumbo v4, "libffmpeg.so"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "libffmpeg.so"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "libffmpeg.so"

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {v1, v4, v5, v6}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/io/File;Ljava/io/File;Ljava/io/File;Z)Ljava/io/File;

    .line 910
    new-instance v1, Ljava/io/File;

    const-string/jumbo v4, "libu3player.so"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "libu3player.so"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "libu3player.so"

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {v1, v4, v5, v6}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/io/File;Ljava/io/File;Ljava/io/File;Z)Ljava/io/File;

    .line 911
    new-instance v1, Ljava/io/File;

    const-string/jumbo v4, "librotate.so"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "librotate.so"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "librotate.so"

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {v1, v4, v5, v6}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/io/File;Ljava/io/File;Ljava/io/File;Z)Ljava/io/File;

    .line 912
    new-instance v1, Ljava/io/File;

    const-string/jumbo v4, "libinitHelper.so"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "libinitHelper.so"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "libinitHelper.so"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v5}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/io/File;Ljava/io/File;Ljava/io/File;Z)Ljava/io/File;

    .line 917
    :goto_17
    const/16 v1, 0x2735

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v2, v3, v0

    invoke-static {v1, v3}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    const/4 v0, 0x0

    aget-object v0, v2, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    aget-object v7, v2, v0
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_b

    goto/16 :goto_0

    .line 919
    :catch_b
    move-exception v0

    .line 920
    const-string/jumbo v1, "tag_test_log"

    const-string/jumbo v2, "getUCPlayerDir"

    invoke-static {v1, v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 927
    :pswitch_2e
    aget-object v0, p1, v6

    check-cast v0, Ljava/io/File;

    .line 928
    aget-object v1, p1, v3

    check-cast v1, [Ljava/io/File;

    .line 930
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 931
    new-instance v2, Ljava/io/File;

    const-string/jumbo v4, "libu3player.so"

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 932
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    .line 934
    if-eqz v4, :cond_2c

    const-string/jumbo v4, "libu3player.so"

    invoke-static {v0, v4}, Lcom/uc/webview/export/utility/download/UpdateTask;->isFinished(Ljava/io/File;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 935
    aget-object v4, v1, v6

    if-eqz v4, :cond_2b

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    new-instance v2, Ljava/io/File;

    aget-object v8, v1, v6

    const-string/jumbo v9, "libu3player.so"

    invoke-direct {v2, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v2, v4, v8

    if-lez v2, :cond_2c

    .line 936
    :cond_2b
    aput-object v0, v1, v6

    .line 941
    :cond_2c
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 942
    if-eqz v2, :cond_0

    .line 943
    array-length v4, v2

    move v0, v6

    :goto_18
    if-ge v0, v4, :cond_0

    aget-object v5, v2, v0

    .line 944
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 945
    const/16 v8, 0x2735

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v5, v9, v6

    aput-object v1, v9, v3

    invoke-static {v8, v9}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 954
    :pswitch_2f
    const/16 v0, 0x2716

    new-array v1, v10, [Ljava/lang/Object;

    const-string/jumbo v2, "swv"

    aput-object v2, v1, v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 955
    const/16 v0, 0x271a

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 956
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->k:Z

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 958
    :try_start_1a
    sget-object v0, Lcom/uc/webview/export/Build;->UCM_VERSION:Ljava/lang/String;

    const-string/jumbo v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 959
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/d;->b(Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0x9

    if-lt v2, v4, :cond_2e

    const/4 v2, 0x2

    aget-object v0, v0, v2

    .line 960
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/d;->b(Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_c

    move-result v0

    const/16 v2, 0xd

    if-ge v0, v2, :cond_49

    :cond_2e
    move v0, v6

    .line 967
    :goto_19
    if-eqz v0, :cond_0

    .line 968
    sput v10, Lcom/uc/webview/export/internal/SDKFactory;->D:I

    .line 969
    const/16 v0, 0x2711

    new-array v1, v3, [Ljava/lang/Object;

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 963
    :catch_c
    move-exception v0

    .line 965
    const-string/jumbo v1, "tag_test_log"

    const-string/jumbo v2, "checkForceSystemWebViewParam"

    invoke-static {v1, v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v6

    goto :goto_19

    .line 973
    :cond_2f
    if-eqz v1, :cond_30

    .line 974
    const/16 v0, 0x2711

    new-array v1, v3, [Ljava/lang/Object;

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 976
    :cond_30
    const/16 v0, 0x2712

    new-array v1, v3, [Ljava/lang/Object;

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 983
    :pswitch_30
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/String;

    .line 984
    aget-object v1, p1, v3

    check-cast v1, Ljava/lang/Runnable;

    .line 986
    sget-object v2, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    if-eqz v2, :cond_31

    .line 987
    sget-object v2, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    sput-object v2, Lcom/uc/webview/export/internal/SDKFactory;->A:Ljava/lang/String;

    .line 989
    :cond_31
    const/16 v2, 0x2724

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v10, :cond_32

    sget-object v2, Lcom/uc/webview/export/internal/SDKFactory;->A:Ljava/lang/String;

    if-nez v2, :cond_33

    .line 990
    :cond_32
    const-string/jumbo v0, "tag_test_log"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "is system webView - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/uc/webview/export/internal/SDKFactory;->A:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 994
    :cond_33
    new-instance v4, Ljava/io/File;

    sget-object v2, Lcom/uc/webview/export/internal/SDKFactory;->A:Ljava/lang/String;

    const-string/jumbo v5, "shared_prefs"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    new-instance v5, Ljava/io/File;

    const-string/jumbo v2, "typeface.xml"

    invoke-direct {v5, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 996
    new-instance v8, Ljava/io/File;

    const-string/jumbo v2, "uc_typeface_hash_"

    invoke-direct {v8, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 997
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_35

    .line 998
    :cond_34
    :goto_1a
    if-eqz v3, :cond_36

    .line 1000
    const-string/jumbo v2, "uc_font_sys"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1009
    :goto_1b
    const/16 v9, 0x2d

    const/16 v10, 0x5f

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 1011
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1012
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1013
    const-string/jumbo v0, "tag_test_log"

    const-string/jumbo v1, "\u5b57\u4f53\u6ca1\u53d8\u5316..."

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_35
    move v3, v6

    .line 997
    goto :goto_1a

    .line 1002
    :cond_36
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1003
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_37

    .line 1004
    const-string/jumbo v0, "tag_test_log"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u5b57\u4f53\u6587\u4ef6\u4e0d\u5b58\u5728-"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1007
    :cond_37
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1b

    .line 1020
    :cond_38
    :try_start_1b
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1021
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v8, v2

    :goto_1c
    if-ge v6, v8, :cond_3a

    aget-object v10, v2, v6

    .line 1022
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 1021
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    .line 1025
    :cond_39
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 1028
    :cond_3a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1029
    if-eqz v3, :cond_3d

    .line 1030
    const-string/jumbo v0, "<?xml version=\'1.0\' encoding=\'utf-8\' standalone=\'yes\' ?>\n<map />"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    :goto_1d
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 1037
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 1040
    :cond_3b
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_e
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    .line 1041
    :try_start_1c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1042
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 1043
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->fontDownloadFinished()V

    .line 1044
    if-eqz v1, :cond_3c

    .line 1045
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_10
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    .line 1050
    :cond_3c
    :try_start_1d
    invoke-static {v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_d

    goto/16 :goto_0

    .line 1054
    :catch_d
    move-exception v0

    .line 1053
    const-string/jumbo v1, "tag_test_log"

    const-string/jumbo v2, "updateTypefacePath"

    invoke-static {v1, v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1032
    :cond_3d
    :try_start_1e
    const-string/jumbo v2, "<?xml version=\'1.0\' encoding=\'utf-8\' standalone=\'yes\' ?>\n<map>\n<string name=\"current_typeface_path\">"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1033
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "</string>\n</map>"

    .line 1034
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_6

    goto :goto_1d

    .line 1047
    :catch_e
    move-exception v0

    move-object v1, v7

    .line 1048
    :goto_1e
    :try_start_1f
    const-string/jumbo v2, "tag_test_log"

    const-string/jumbo v3, "updateTypefacePath"

    invoke-static {v2, v3, v0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    .line 1050
    :try_start_20
    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_6
    move-exception v0

    move-object v2, v7

    :goto_1f
    invoke-static {v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    throw v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_d

    .line 1059
    :pswitch_31
    const/16 v0, 0x2724

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v10, :cond_3e

    .line 1060
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto/16 :goto_0

    .line 1062
    :cond_3e
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->n()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto/16 :goto_0

    .line 1068
    :pswitch_32
    new-instance v1, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct {v1}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V

    .line 1070
    :cond_3f
    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->isSetupThread()Z

    move-result v0

    if-eqz v0, :cond_41

    const/16 v0, 0x271a

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_41

    .line 1071
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 1072
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1073
    const/4 v0, 0x3

    :goto_20
    array-length v3, v1

    if-ge v0, v3, :cond_40

    const/16 v3, 0x8

    if-ge v0, v3, :cond_40

    .line 1074
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.uc.webview.export."

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\\(.+\\)"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1075
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 1077
    :cond_40
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v1, 0xbc5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1081
    :cond_41
    invoke-static {v7}, Lcom/uc/webview/export/internal/SDKFactory$b;->a(Ljava/lang/Runnable;)V

    .line 1084
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->p:Z

    if-eqz v0, :cond_42

    .line 1085
    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->resumeAll()V

    .line 1087
    :cond_42
    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->D:I

    if-nez v0, :cond_43

    .line 1090
    const/16 v0, 0x2728

    new-array v2, v3, [Ljava/lang/Object;

    const-wide/16 v4, 0xc8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    invoke-virtual {v1}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v4

    sget-wide v8, Lcom/uc/webview/export/internal/SDKFactory;->i:J

    cmp-long v0, v4, v8

    if-ltz v0, :cond_3f

    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->j:I

    if-eq v0, v3, :cond_3f

    .line 1099
    :cond_43
    invoke-static {v7}, Lcom/uc/webview/export/internal/SDKFactory$b;->a(Ljava/lang/Runnable;)V

    .line 1101
    const-class v1, Lcom/uc/webview/export/internal/SDKFactory;

    monitor-enter v1

    .line 1102
    :try_start_21
    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->D:I

    if-nez v0, :cond_44

    .line 1103
    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->j:I

    if-ne v0, v10, :cond_45

    .line 1104
    const/4 v0, 0x2

    sput v0, Lcom/uc/webview/export/internal/SDKFactory;->D:I

    .line 1112
    :cond_44
    const-string/jumbo v0, "SDKFactory"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string/jumbo v3, "waitForInit(sWebViewPolicy=%d, sMaxWaitMillis=%d)=%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget v6, Lcom/uc/webview/export/internal/SDKFactory;->j:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-wide v8, Lcom/uc/webview/export/internal/SDKFactory;->i:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget v6, Lcom/uc/webview/export/internal/SDKFactory;->D:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    monitor-exit v1

    goto/16 :goto_0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_7

    throw v0

    .line 1105
    :cond_45
    :try_start_22
    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->j:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_44

    .line 1106
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v2, 0xfa9

    const-string/jumbo v3, "Thread [%s] waitting for init is up to [%s] milis."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1108
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-wide v6, Lcom/uc/webview/export/internal/SDKFactory;->i:J

    .line 1109
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1107
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    .line 1114
    :pswitch_33
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/uc/webview/export/internal/utility/Log;->sPrintLog:Z

    .line 1120
    :try_start_23
    const-string/jumbo v0, "com.uc.webview.export.cd.CDUtil"

    const-string/jumbo v1, "setEnablePrintLog"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Boolean;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-boolean v8, Lcom/uc/webview/export/internal/utility/Log;->sPrintLog:Z

    .line 1121
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v4, v5

    .line 1120
    invoke-static {v0, v1, v2, v4}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_f

    .line 1125
    :goto_21
    aget-object v0, p1, v3

    check-cast v0, [Ljava/lang/Object;

    .line 1126
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 1127
    aget-object v1, p1, v6

    check-cast v1, Ljava/lang/Boolean;

    aput-object v1, v0, v6

    .line 1128
    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCLogger;->setup([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1132
    :pswitch_34
    sget-object v7, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    goto/16 :goto_0

    .line 1135
    :pswitch_35
    const/16 v0, 0x2726

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 1136
    if-eqz v0, :cond_46

    const-string/jumbo v1, "IsRunningInWebViewSdk"

    invoke-interface {v0, v1}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->getBoolValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1137
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto/16 :goto_0

    .line 1139
    :cond_46
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto/16 :goto_0

    .line 1143
    :pswitch_36
    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->D:I

    if-ne v0, v10, :cond_47

    .line 1144
    const-string/jumbo v0, "android.webkit.WebView"

    const-string/jumbo v1, "enableSlowWholeDocumentDraw"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invokeNoThrow(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1145
    :cond_47
    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->D:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1146
    const-string/jumbo v0, "com.uc.webkit.WebView"

    const-string/jumbo v1, "enableSlowWholeDocumentDraw"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invokeNoThrow(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1150
    :pswitch_37
    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->D:I

    if-ne v0, v10, :cond_48

    .line 1151
    const-string/jumbo v0, "android.webkit.WebSettings"

    const-string/jumbo v1, "getDefaultUserAgent"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invokeNoThrow(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    goto/16 :goto_0

    .line 1152
    :cond_48
    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->D:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1153
    const-string/jumbo v0, "com.uc.webkit.WebSettings"

    const-string/jumbo v1, "getDefaultUserAgent"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invokeNoThrow(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    goto/16 :goto_0

    :catch_f
    move-exception v0

    goto/16 :goto_21

    .line 1050
    :catchall_8
    move-exception v0

    goto/16 :goto_1f

    :catchall_9
    move-exception v0

    move-object v2, v1

    goto/16 :goto_1f

    .line 1047
    :catch_10
    move-exception v0

    move-object v1, v2

    goto/16 :goto_1e

    .line 887
    :catchall_a
    move-exception v1

    move-object v11, v1

    move-object v1, v7

    move-object v7, v0

    move-object v0, v11

    goto/16 :goto_16

    :catchall_b
    move-exception v2

    move-object v7, v0

    move-object v0, v2

    goto/16 :goto_16

    :catchall_c
    move-exception v0

    goto/16 :goto_16

    .line 884
    :catch_11
    move-exception v1

    move-object v11, v1

    move-object v1, v7

    move-object v7, v0

    move-object v0, v11

    goto/16 :goto_15

    :catch_12
    move-exception v2

    move-object v7, v0

    move-object v0, v2

    goto/16 :goto_15

    .line 846
    :catchall_d
    move-exception v0

    move-object v7, v1

    goto/16 :goto_12

    :catchall_e
    move-exception v1

    move-object v7, v0

    move-object v0, v1

    goto/16 :goto_12

    .line 843
    :catch_13
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_f

    .line 838
    :catchall_f
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_11

    :catch_14
    move-exception v1

    goto/16 :goto_10

    .line 346
    :catch_15
    move-exception v0

    goto/16 :goto_0

    :cond_49
    move v0, v1

    goto/16 :goto_19

    :cond_4a
    move-object v0, v1

    goto/16 :goto_17

    :cond_4b
    move-object v0, v7

    goto/16 :goto_13

    :cond_4c
    move-object v1, v7

    goto/16 :goto_d

    .line 283
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_2a
        :pswitch_32
        :pswitch_f
        :pswitch_7
        :pswitch_33
        :pswitch_5
        :pswitch_8
        :pswitch_34
        :pswitch_35
        :pswitch_4
        :pswitch_16
        :pswitch_36
        :pswitch_37
    .end packed-switch
.end method
