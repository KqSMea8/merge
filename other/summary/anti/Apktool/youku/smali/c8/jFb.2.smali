.class public Lc8/jFb;
.super Lc8/rFb;


# static fields
.field public static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "AliBCBase"

    sput-object v0, Lc8/jFb;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc8/rFb;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Lc8/eFb;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lc8/fFb;

    invoke-direct {v0}, Lc8/fFb;-><init>()V

    invoke-virtual {v0}, Lc8/fFb;->setSuccess()V

    const-string/jumbo v1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc8/fFb;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "brand"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc8/fFb;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lc8/eFb;->success(Lc8/fFb;)V

    return-void
.end method

.method public b(Lc8/eFb;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "apps"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lc8/nIb;->toStringArray(Lorg/json/JSONArray;)[Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    new-instance v2, Lc8/fFb;

    invoke-direct {v2}, Lc8/fFb;-><init>()V

    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Lc8/eFb;->error(Lc8/fFb;)V

    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v1, "Base"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isInstall parse params error, params: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_2
    array-length v3, v0

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lc8/jFb;->b:Landroid/content/Context;

    aget-object v4, v0, v1

    invoke-static {v3, v4}, Lc8/jFb;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    aget-object v4, v0, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lc8/fFb;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Lc8/fFb;->setSuccess()V

    invoke-virtual {p1, v2}, Lc8/eFb;->success(Lc8/fFb;)V

    goto :goto_1
.end method

.method public execute(Ljava/lang/String;Ljava/lang/String;Lc8/eFb;)Z
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_2

    :cond_0
    new-instance v0, Lc8/fFb;

    const-string/jumbo v1, "6"

    invoke-direct {v0, v1}, Lc8/fFb;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Lc8/fFb;->setResultCode(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    invoke-virtual {p3, v0}, Lc8/eFb;->error(Lc8/fFb;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const-string/jumbo v0, "getDeviceInfo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p3, p2}, Lc8/jFb;->a(Lc8/eFb;Ljava/lang/String;)V

    :cond_3
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "isInstalled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p3, p2}, Lc8/jFb;->b(Lc8/eFb;Ljava/lang/String;)V

    goto :goto_1
.end method
