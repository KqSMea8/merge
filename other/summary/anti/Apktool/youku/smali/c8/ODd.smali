.class public final Lc8/ODd;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/RDd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/NDd;
    }
.end annotation


# instance fields
.field final synthetic a:Lc8/RDd;

.field private final b:Lc8/QDd;

.field private final c:[Z

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>(Lc8/RDd;Lc8/QDd;)V
    .locals 1

    iput-object p1, p0, Lc8/ODd;->a:Lc8/RDd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lc8/ODd;->b:Lc8/QDd;

    invoke-static {p2}, Lc8/QDd;->e(Lc8/QDd;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lc8/ODd;->c:[Z

    return-void

    :cond_0
    invoke-static {p1}, Lc8/RDd;->f(Lc8/RDd;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lc8/RDd;Lc8/QDd;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc8/ODd;-><init>(Lc8/RDd;Lc8/QDd;)V

    return-void
.end method

.method static synthetic a(Lc8/ODd;)Lc8/QDd;
    .locals 1

    iget-object v0, p0, Lc8/ODd;->b:Lc8/QDd;

    return-object v0
.end method

.method static synthetic b(Lc8/ODd;)[Z
    .locals 1

    iget-object v0, p0, Lc8/ODd;->c:[Z

    return-object v0
.end method

.method static synthetic c(Lc8/ODd;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/ODd;->d:Z

    return v0
.end method


# virtual methods
.method public final a()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lc8/ODd;->a:Lc8/RDd;

    invoke-static {v0}, Lc8/RDd;->f(Lc8/RDd;)I

    move-result v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Expected index 0 to be greater than 0 and less than the maximum value count of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lc8/ODd;->a:Lc8/RDd;

    invoke-static {v2}, Lc8/RDd;->f(Lc8/RDd;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v2, p0, Lc8/ODd;->a:Lc8/RDd;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lc8/ODd;->b:Lc8/QDd;

    invoke-static {v0}, Lc8/QDd;->b(Lc8/QDd;)Lc8/ODd;

    move-result-object v0

    if-eq v0, p0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lc8/ODd;->b:Lc8/QDd;

    invoke-static {v0}, Lc8/QDd;->e(Lc8/QDd;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lc8/ODd;->c:[Z

    const/4 v1, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v1

    :cond_2
    iget-object v0, p0, Lc8/ODd;->b:Lc8/QDd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/QDd;->b(I)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    :goto_0
    :try_start_3
    new-instance v0, Lc8/NDd;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3}, Lc8/NDd;-><init>(Lc8/ODd;Ljava/io/OutputStream;B)V

    monitor-exit v2

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lc8/ODd;->a:Lc8/RDd;

    invoke-static {v0}, Lc8/RDd;->g(Lc8/RDd;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    invoke-static {}, Lc8/RDd;->f()Ljava/io/OutputStream;

    move-result-object v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public final b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    iget-boolean v0, p0, Lc8/ODd;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/ODd;->a:Lc8/RDd;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lc8/RDd;->a(Lc8/RDd;Lc8/ODd;Z)V

    iget-object v0, p0, Lc8/ODd;->a:Lc8/RDd;

    iget-object v1, p0, Lc8/ODd;->b:Lc8/QDd;

    invoke-static {v1}, Lc8/QDd;->d(Lc8/QDd;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/RDd;->c(Ljava/lang/String;)Z

    :goto_0
    iput-boolean v2, p0, Lc8/ODd;->e:Z

    return-void

    :cond_0
    iget-object v0, p0, Lc8/ODd;->a:Lc8/RDd;

    invoke-static {v0, p0, v2}, Lc8/RDd;->a(Lc8/RDd;Lc8/ODd;Z)V

    goto :goto_0
.end method

.method public final c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lc8/ODd;->a:Lc8/RDd;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lc8/RDd;->a(Lc8/RDd;Lc8/ODd;Z)V

    return-void
.end method
