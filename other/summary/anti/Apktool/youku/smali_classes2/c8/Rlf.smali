.class public Lc8/Rlf;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lc8/ymf;


# instance fields
.field private a:Lc8/PM;


# direct methods
.method public constructor <init>(Lc8/PM;)V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lc8/Rlf;->a:Lc8/PM;

    .line 18
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lc8/Rlf;->a:Lc8/PM;

    if-eqz v0, :cond_0

    .line 33
    :try_start_0
    iget-object v0, p0, Lc8/Rlf;->a:Lc8/PM;

    invoke-interface {v0}, Lc8/PM;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
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
    :try_start_0
    iget-object v0, p0, Lc8/Rlf;->a:Lc8/PM;

    invoke-interface {v0, p1}, Lc8/PM;->read([B)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "read"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
