.class public Lc8/cAg;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/aAg;,
        Lc8/bAg;
    }
.end annotation


# static fields
.field private static a:Lc8/cAg;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lc8/bAg;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc8/cAg;->b:Landroid/content/Context;

    invoke-direct {p0}, Lc8/cAg;->o()V

    return-void
.end method

.method static synthetic a(Lc8/cAg;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lc8/cAg;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lc8/cAg;
    .locals 1

    sget-object v0, Lc8/cAg;->a:Lc8/cAg;

    if-nez v0, :cond_0

    new-instance v0, Lc8/cAg;

    invoke-direct {v0, p0}, Lc8/cAg;-><init>(Landroid/content/Context;)V

    sput-object v0, Lc8/cAg;->a:Lc8/cAg;

    :cond_0
    sget-object v0, Lc8/cAg;->a:Lc8/cAg;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x4000

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lc8/Hzg;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "1.0"

    goto :goto_1
.end method

.method private o()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lc8/bAg;

    invoke-direct {v0, p0, v4}, Lc8/bAg;-><init>(Lc8/cAg;Lc8/aAg;)V

    iput-object v0, p0, Lc8/cAg;->c:Lc8/bAg;

    invoke-virtual {p0}, Lc8/cAg;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lc8/cAg;->c:Lc8/bAg;

    const-string/jumbo v2, "appId"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc8/bAg;->a:Ljava/lang/String;

    iget-object v1, p0, Lc8/cAg;->c:Lc8/bAg;

    const-string/jumbo v2, "appToken"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc8/bAg;->b:Ljava/lang/String;

    iget-object v1, p0, Lc8/cAg;->c:Lc8/bAg;

    const-string/jumbo v2, "regId"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc8/bAg;->c:Ljava/lang/String;

    iget-object v1, p0, Lc8/cAg;->c:Lc8/bAg;

    const-string/jumbo v2, "regSec"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc8/bAg;->d:Ljava/lang/String;

    iget-object v1, p0, Lc8/cAg;->c:Lc8/bAg;

    const-string/jumbo v2, "devId"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc8/bAg;->f:Ljava/lang/String;

    iget-object v1, p0, Lc8/cAg;->c:Lc8/bAg;

    iget-object v1, v1, Lc8/bAg;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lc8/cAg;->c:Lc8/bAg;

    iget-object v1, v1, Lc8/bAg;->f:Ljava/lang/String;

    const-string/jumbo v2, "a-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/cAg;->c:Lc8/bAg;

    iget-object v2, p0, Lc8/cAg;->b:Landroid/content/Context;

    invoke-static {v2}, Lc8/qAg;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc8/bAg;->f:Ljava/lang/String;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "devId"

    iget-object v3, p0, Lc8/cAg;->c:Lc8/bAg;

    iget-object v3, v3, Lc8/bAg;->f:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    iget-object v1, p0, Lc8/cAg;->c:Lc8/bAg;

    const-string/jumbo v2, "vName"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc8/bAg;->e:Ljava/lang/String;

    iget-object v1, p0, Lc8/cAg;->c:Lc8/bAg;

    const-string/jumbo v2, "valid"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lc8/bAg;->h:Z

    iget-object v1, p0, Lc8/cAg;->c:Lc8/bAg;

    const-string/jumbo v2, "paused"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lc8/bAg;->i:Z

    iget-object v1, p0, Lc8/cAg;->c:Lc8/bAg;

    const-string/jumbo v2, "envType"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lc8/bAg;->j:I

    iget-object v1, p0, Lc8/cAg;->c:Lc8/bAg;

    const-string/jumbo v2, "regResource"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lc8/bAg;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lc8/cAg;->c:Lc8/bAg;

    invoke-virtual {v0, p1}, Lc8/bAg;->a(I)V

    invoke-virtual {p0}, Lc8/cAg;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "envType"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lc8/cAg;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "vName"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lc8/cAg;->c:Lc8/bAg;

    iput-object p1, v0, Lc8/bAg;->e:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc8/cAg;->c:Lc8/bAg;

    invoke-virtual {v0, p1, p2, p3}, Lc8/bAg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lc8/cAg;->c:Lc8/bAg;

    invoke-virtual {v0, p1}, Lc8/bAg;->a(Z)V

    invoke-virtual {p0}, Lc8/cAg;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "paused"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a()Z
    .locals 2

    iget-object v0, p0, Lc8/cAg;->b:Landroid/content/Context;

    iget-object v1, p0, Lc8/cAg;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/cAg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc8/cAg;->c:Lc8/bAg;

    iget-object v1, v1, Lc8/bAg;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lc8/cAg;->c:Lc8/bAg;

    invoke-virtual {v0, p1, p2}, Lc8/bAg;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc8/cAg;->c:Lc8/bAg;

    invoke-virtual {v0, p1, p2}, Lc8/bAg;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lc8/cAg;->c:Lc8/bAg;

    invoke-virtual {v0}, Lc8/bAg;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Don\'t send message before initialization succeeded!"

    invoke-static {v0}, Lc8/Hzg;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc8/cAg;->c:Lc8/bAg;

    iget-object v0, v0, Lc8/bAg;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc8/cAg;->c:Lc8/bAg;

    iget-object v0, v0, Lc8/bAg;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc8/cAg;->c:Lc8/bAg;

    iget-object v0, v0, Lc8/bAg;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc8/cAg;->c:Lc8/bAg;

    iget-object v0, v0, Lc8/bAg;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc8/cAg;->c:Lc8/bAg;

    iget-object v0, v0, Lc8/bAg;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lc8/cAg;->c:Lc8/bAg;

    invoke-virtual {v0}, Lc8/bAg;->b()V

    return-void
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lc8/cAg;->c:Lc8/bAg;

    invoke-virtual {v0}, Lc8/bAg;->a()Z

    move-result v0

    return v0
.end method

.method public j()Landroid/content/SharedPreferences;
    .locals 3

    iget-object v0, p0, Lc8/cAg;->b:Landroid/content/Context;

    const-string/jumbo v1, "mipush"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Lc8/cAg;->c:Lc8/bAg;

    invoke-virtual {v0}, Lc8/bAg;->c()V

    return-void
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lc8/cAg;->c:Lc8/bAg;

    iget-boolean v0, v0, Lc8/bAg;->i:Z

    return v0
.end method

.method public m()I
    .locals 1

    iget-object v0, p0, Lc8/cAg;->c:Lc8/bAg;

    iget v0, v0, Lc8/bAg;->j:I

    return v0
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Lc8/cAg;->c:Lc8/bAg;

    iget-boolean v0, v0, Lc8/bAg;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
