.class public Lc8/pmf;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lc8/ymf;


# static fields
.field private static a:I


# instance fields
.field private b:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const v0, 0x8000

    sput v0, Lc8/pmf;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/io/BufferedInputStream;

    sget v1, Lc8/pmf;->a:I

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lc8/pmf;->b:Ljava/io/InputStream;

    .line 19
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lc8/pmf;->b:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 30
    :try_start_0
    iget-object v0, p0, Lc8/pmf;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public read([B)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lc8/pmf;->b:Ljava/io/InputStream;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method
