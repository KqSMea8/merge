.class public final Lc8/QDd;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/RDd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lc8/RDd;

.field private final b:Ljava/lang/String;

.field private final c:[J

.field private d:Z

.field private e:Lc8/ODd;

.field private f:J


# direct methods
.method private constructor <init>(Lc8/RDd;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lc8/QDd;->a:Lc8/RDd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lc8/QDd;->b:Ljava/lang/String;

    invoke-static {p1}, Lc8/RDd;->f(Lc8/RDd;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lc8/QDd;->c:[J

    return-void
.end method

.method synthetic constructor <init>(Lc8/RDd;Ljava/lang/String;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc8/QDd;-><init>(Lc8/RDd;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lc8/QDd;J)J
    .locals 1

    iput-wide p1, p0, Lc8/QDd;->f:J

    return-wide p1
.end method

.method static synthetic a(Lc8/QDd;Lc8/ODd;)Lc8/ODd;
    .locals 0

    iput-object p1, p0, Lc8/QDd;->e:Lc8/ODd;

    return-object p1
.end method

.method private static a([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unexpected journal line: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lc8/QDd;[Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    iget-object v1, p0, Lc8/QDd;->a:Lc8/RDd;

    invoke-static {v1}, Lc8/RDd;->f(Lc8/RDd;)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Lc8/QDd;->a([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lc8/QDd;->c:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {p1}, Lc8/QDd;->a([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1
    return-void
.end method

.method static synthetic a(Lc8/QDd;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/QDd;->d:Z

    return v0
.end method

.method static synthetic b(Lc8/QDd;)Lc8/ODd;
    .locals 1

    iget-object v0, p0, Lc8/QDd;->e:Lc8/ODd;

    return-object v0
.end method

.method static synthetic c(Lc8/QDd;)[J
    .locals 1

    iget-object v0, p0, Lc8/QDd;->c:[J

    return-object v0
.end method

.method static synthetic d(Lc8/QDd;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc8/QDd;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lc8/QDd;)Z
    .locals 1

    iget-boolean v0, p0, Lc8/QDd;->d:Z

    return v0
.end method

.method static synthetic f(Lc8/QDd;)J
    .locals 2

    iget-wide v0, p0, Lc8/QDd;->f:J

    return-wide v0
.end method


# virtual methods
.method public final a(I)Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lc8/QDd;->a:Lc8/RDd;

    invoke-static {v1}, Lc8/RDd;->g(Lc8/RDd;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lc8/QDd;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lc8/QDd;->c:[J

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-wide v4, v2, v0

    const/16 v6, 0x20

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lc8/QDd;->a:Lc8/RDd;

    invoke-static {v1}, Lc8/RDd;->g(Lc8/RDd;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lc8/QDd;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
