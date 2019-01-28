.class public final Lc8/sDd;
.super Ljava/lang/Thread;
.source "DexDownLoad.java"

# interfaces
.implements Lc8/ZDd;


# instance fields
.field private a:Lc8/tDd;

.field private b:Lc8/aEd;

.field private c:Lc8/aGd;

.field private d:Ljava/lang/String;

.field private e:Ljava/io/RandomAccessFile;

.field private f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc8/tDd;Lc8/aGd;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc8/sDd;->f:Landroid/content/Context;

    iput-object p3, p0, Lc8/sDd;->c:Lc8/aGd;

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lc8/sDd;->a:Lc8/tDd;

    new-instance v0, Lc8/aEd;

    new-instance v1, Lc8/yDd;

    iget-object v2, p0, Lc8/sDd;->a:Lc8/tDd;

    invoke-direct {v1, v2}, Lc8/yDd;-><init>(Lc8/tDd;)V

    invoke-direct {v0, v1}, Lc8/aEd;-><init>(Lc8/eEd;)V

    iput-object v0, p0, Lc8/sDd;->b:Lc8/aEd;

    iget-object v0, p0, Lc8/sDd;->a:Lc8/tDd;

    iget-object v0, v0, Lc8/tDd;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lc8/BDd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/sDd;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "dDownLoad"

    const-string/jumbo v2, "DexDownLoad()"

    invoke-static {v0, v1, v2}, Lc8/eGd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lc8/eDd;)Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lc8/sDd;->a:Lc8/tDd;

    iget-object v0, v0, Lc8/tDd;->b:Ljava/lang/String;

    const-string/jumbo v2, "used"

    invoke-static {p1, v0, v2}, Lc8/ADd;->a(Lc8/eDd;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/IDd;

    invoke-virtual {v0}, Lc8/IDd;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lc8/sDd;->a:Lc8/tDd;

    iget-object v2, v2, Lc8/tDd;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lc8/JDd;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "dDownLoad"

    const-string/jumbo v3, "isUsed()"

    invoke-static {v0, v2, v3}, Lc8/eGd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private a(Lc8/eDd;Lc8/IDd;Lc8/tDd;)Z
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p3, Lc8/tDd;->b:Ljava/lang/String;

    iget-object v2, p3, Lc8/tDd;->c:Ljava/lang/String;

    iget-object v3, p3, Lc8/tDd;->d:Ljava/lang/String;

    const-string/jumbo v4, "errorstatus"

    invoke-virtual {p2}, Lc8/IDd;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lc8/sDd;->f:Landroid/content/Context;

    iget-object v3, p0, Lc8/sDd;->c:Lc8/aGd;

    invoke-virtual {v3}, Lc8/aGd;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lc8/sDd;->c:Lc8/aGd;

    invoke-virtual {v4}, Lc8/aGd;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lc8/BDd;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lc8/sDd;->f:Landroid/content/Context;

    iget-object v2, p0, Lc8/sDd;->c:Lc8/aGd;

    invoke-static {v1, p1, v2}, Lc8/BDd;->a(Landroid/content/Context;Lc8/eDd;Lc8/aGd;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lc8/sDd;->f:Landroid/content/Context;

    iget-object v2, p0, Lc8/sDd;->c:Lc8/aGd;

    invoke-static {v1, v2}, Lc8/BDd;->a(Landroid/content/Context;Lc8/aGd;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lc8/sDd;->d:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lc8/sDd;->f:Landroid/content/Context;

    invoke-static {v4, v1, v2}, Lc8/BDd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1, v2, v3}, Lc8/IDd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v4, Lc8/IDd;

    invoke-virtual {p1, v2, v4}, Lc8/eDd;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    :cond_3
    :try_start_1
    iget-object v2, p0, Lc8/sDd;->f:Landroid/content/Context;

    iget-object v4, p0, Lc8/sDd;->c:Lc8/aGd;

    invoke-virtual {v4}, Lc8/aGd;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v4}, Lc8/BDd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lc8/sDd;->f:Landroid/content/Context;

    iget-object v2, p0, Lc8/sDd;->c:Lc8/aGd;

    iget-object v4, p0, Lc8/sDd;->d:Ljava/lang/String;

    invoke-static {v1, p1, v2, v4, v3}, Lc8/BDd;->a(Landroid/content/Context;Lc8/eDd;Lc8/aGd;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lc8/sDd;->f:Landroid/content/Context;

    iget-object v2, p0, Lc8/sDd;->c:Lc8/aGd;

    invoke-static {v1, v2}, Lc8/BDd;->a(Landroid/content/Context;Lc8/aGd;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v2, "dDownLoad"

    const-string/jumbo v3, "processDownloadedFile()"

    invoke-static {v1, v2, v3}, Lc8/eGd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lc8/sDd;->c:Lc8/aGd;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/sDd;->c:Lc8/aGd;

    invoke-virtual {v2}, Lc8/aGd;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc8/sDd;->a:Lc8/tDd;

    iget-object v3, v3, Lc8/tDd;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/sDd;->c:Lc8/aGd;

    invoke-virtual {v2}, Lc8/aGd;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc8/sDd;->a:Lc8/tDd;

    iget-object v3, v3, Lc8/tDd;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_5

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v3, p0, Lc8/sDd;->a:Lc8/tDd;

    iget v3, v3, Lc8/tDd;->g:I

    if-lt v2, v3, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v3, p0, Lc8/sDd;->a:Lc8/tDd;

    iget v3, v3, Lc8/tDd;->f:I

    if-gt v2, v3, :cond_1

    move v2, v0

    :goto_1
    if-eqz v2, :cond_5

    iget-object v2, p0, Lc8/sDd;->f:Landroid/content/Context;

    invoke-static {v2}, Lc8/TFd;->m(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v0, :cond_2

    move v2, v0

    :goto_2
    if-eqz v2, :cond_5

    new-instance v2, Lc8/eDd;

    iget-object v3, p0, Lc8/sDd;->f:Landroid/content/Context;

    invoke-static {}, Lc8/GDd;->b()Lc8/GDd;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lc8/eDd;-><init>(Landroid/content/Context;Lc8/dDd;)V

    invoke-direct {p0, v2}, Lc8/sDd;->a(Lc8/eDd;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v2, v0

    :goto_3
    if-nez v2, :cond_5

    iget-object v2, p0, Lc8/sDd;->f:Landroid/content/Context;

    iget-object v3, p0, Lc8/sDd;->c:Lc8/aGd;

    invoke-virtual {v3}, Lc8/aGd;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/BDd;->b(Landroid/content/Context;Ljava/lang/String;)V

    :goto_4
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lc8/sDd;->a:Lc8/tDd;

    iget-object v3, v3, Lc8/tDd;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lc8/ADd;->a(Lc8/eDd;Ljava/lang/String;)Lc8/IDd;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v4, p0, Lc8/sDd;->a:Lc8/tDd;

    invoke-direct {p0, v2, v3, v4}, Lc8/sDd;->a(Lc8/eDd;Lc8/IDd;Lc8/tDd;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_3

    :cond_4
    move v2, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_4

    :catch_0
    move-exception v0

    const-string/jumbo v2, "dDownLoad"

    const-string/jumbo v3, "isNeedDownload()"

    invoke-static {v0, v2, v3}, Lc8/eGd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_4
.end method


# virtual methods
.method public final a()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lc8/sDd;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "dDownLoad"

    const-string/jumbo v2, "startDownload()"

    invoke-static {v0, v1, v2}, Lc8/eGd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a([BJ)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lc8/sDd;->e:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lc8/sDd;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lc8/sDd;->e:Ljava/io/RandomAccessFile;

    :cond_1
    iget-object v0, p0, Lc8/sDd;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lc8/sDd;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "dDownLoad"

    const-string/jumbo v2, "onDownload()"

    invoke-static {v0, v1, v2}, Lc8/eGd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lc8/sDd;->e:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lc8/sDd;->e:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lc8/JDd;->a(Ljava/io/Closeable;)V

    iget-object v0, p0, Lc8/sDd;->a:Lc8/tDd;

    invoke-virtual {v0}, Lc8/tDd;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lc8/sDd;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lc8/JDd;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/sDd;->a:Lc8/tDd;

    iget-object v4, v0, Lc8/tDd;->c:Ljava/lang/String;

    new-instance v6, Lc8/eDd;

    iget-object v0, p0, Lc8/sDd;->f:Landroid/content/Context;

    invoke-static {}, Lc8/GDd;->b()Lc8/GDd;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Lc8/eDd;-><init>(Landroid/content/Context;Lc8/dDd;)V

    new-instance v0, Lc8/HDd;

    iget-object v1, p0, Lc8/sDd;->a:Lc8/tDd;

    iget-object v1, v1, Lc8/tDd;->a:Ljava/lang/String;

    iget-object v3, p0, Lc8/sDd;->a:Lc8/tDd;

    iget-object v3, v3, Lc8/tDd;->b:Ljava/lang/String;

    iget-object v5, p0, Lc8/sDd;->a:Lc8/tDd;

    iget-object v5, v5, Lc8/tDd;->d:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lc8/HDd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "copy"

    invoke-virtual {v0, v1}, Lc8/HDd;->a(Ljava/lang/String;)Lc8/HDd;

    move-result-object v0

    invoke-virtual {v0}, Lc8/HDd;->a()Lc8/IDd;

    move-result-object v0

    iget-object v1, p0, Lc8/sDd;->a:Lc8/tDd;

    iget-object v1, v1, Lc8/tDd;->a:Ljava/lang/String;

    iget-object v2, p0, Lc8/sDd;->a:Lc8/tDd;

    iget-object v2, v2, Lc8/tDd;->b:Ljava/lang/String;

    iget-object v3, p0, Lc8/sDd;->a:Lc8/tDd;

    iget-object v3, v3, Lc8/tDd;->d:Ljava/lang/String;

    invoke-static {v1, v2, v4, v3}, Lc8/IDd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lc8/eDd;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lc8/sDd;->f:Landroid/content/Context;

    iget-object v1, p0, Lc8/sDd;->a:Lc8/tDd;

    iget-object v1, v1, Lc8/tDd;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    iget-object v0, p0, Lc8/sDd;->f:Landroid/content/Context;

    iget-object v1, p0, Lc8/sDd;->c:Lc8/aGd;

    iget-object v2, p0, Lc8/sDd;->d:Ljava/lang/String;

    iget-object v3, p0, Lc8/sDd;->a:Lc8/tDd;

    iget-object v3, v3, Lc8/tDd;->d:Ljava/lang/String;

    invoke-static {v0, v6, v1, v2, v3}, Lc8/BDd;->a(Landroid/content/Context;Lc8/eDd;Lc8/aGd;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc8/sDd;->f:Landroid/content/Context;

    iget-object v1, p0, Lc8/sDd;->c:Lc8/aGd;

    invoke-static {v0, v1}, Lc8/BDd;->a(Landroid/content/Context;Lc8/aGd;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    new-instance v0, Lc8/jEd;

    iget-object v1, p0, Lc8/sDd;->f:Landroid/content/Context;

    iget-object v2, p0, Lc8/sDd;->c:Lc8/aGd;

    invoke-virtual {v2}, Lc8/aGd;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc8/sDd;->c:Lc8/aGd;

    invoke-virtual {v3}, Lc8/aGd;->b()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "O008"

    invoke-direct {v0, v1, v2, v3, v4}, Lc8/jEd;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "{\"param_int_first\":1}"

    invoke-virtual {v0, v1}, Lc8/jEd;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lc8/sDd;->f:Landroid/content/Context;

    invoke-static {v0, v1}, Lc8/mEd;->a(Lc8/jEd;Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "dDownLoad"

    const-string/jumbo v2, "onFinish()"

    invoke-static {v0, v1, v2}, Lc8/eGd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    const-string/jumbo v1, "dDownLoad"

    const-string/jumbo v2, "clearMarker()"

    invoke-static {v0, v1, v2}, Lc8/eGd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string/jumbo v1, "dDownLoad"

    const-string/jumbo v2, "onFinish1"

    invoke-static {v0, v1, v2}, Lc8/eGd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :cond_1
    :try_start_5
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lc8/sDd;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :try_start_6
    const-string/jumbo v1, "dDownLoad"

    const-string/jumbo v2, "onFinish"

    invoke-static {v0, v1, v2}, Lc8/eGd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0
.end method

.method public final d()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lc8/sDd;->e:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lc8/JDd;->a(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final run()V
    .locals 5

    :try_start_0
    invoke-direct {p0}, Lc8/sDd;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lc8/jEd;

    iget-object v1, p0, Lc8/sDd;->f:Landroid/content/Context;

    iget-object v2, p0, Lc8/sDd;->c:Lc8/aGd;

    invoke-virtual {v2}, Lc8/aGd;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc8/sDd;->c:Lc8/aGd;

    invoke-virtual {v3}, Lc8/aGd;->b()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "O008"

    invoke-direct {v0, v1, v2, v3, v4}, Lc8/jEd;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "{\"param_int_first\":0}"

    invoke-virtual {v0, v1}, Lc8/jEd;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lc8/sDd;->f:Landroid/content/Context;

    invoke-static {v0, v1}, Lc8/mEd;->a(Lc8/jEd;Landroid/content/Context;)V

    iget-object v0, p0, Lc8/sDd;->b:Lc8/aEd;

    invoke-virtual {v0, p0}, Lc8/aEd;->a(Lc8/ZDd;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "dDownLoad"

    const-string/jumbo v2, "run()"

    invoke-static {v0, v1, v2}, Lc8/eGd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
