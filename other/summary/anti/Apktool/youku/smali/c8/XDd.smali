.class public final Lc8/XDd;
.super Ljava/lang/Object;
.source "BaseNetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/WDd;
    }
.end annotation


# static fields
.field private static a:Lc8/XDd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lc8/XDd;
    .locals 1

    sget-object v0, Lc8/XDd;->a:Lc8/XDd;

    if-nez v0, :cond_0

    new-instance v0, Lc8/XDd;

    invoke-direct {v0}, Lc8/XDd;-><init>()V

    sput-object v0, Lc8/XDd;->a:Lc8/XDd;

    :cond_0
    sget-object v0, Lc8/XDd;->a:Lc8/XDd;

    return-object v0
.end method

.method public static a(Lc8/eEd;Z)Lc8/fEd;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/loc/j;
        }
    .end annotation

    if-nez p0, :cond_0

    :try_start_0
    new-instance v0, Lcom/loc/j;

    const-string/jumbo v1, "requeust is null"

    invoke-direct {v0, v1}, Lcom/loc/j;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/loc/j; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lc8/eEd;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    invoke-virtual {p0}, Lc8/eEd;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lcom/loc/j;

    const-string/jumbo v1, "request url is empty"

    invoke-direct {v0, v1}, Lcom/loc/j;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/loc/j; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Lcom/loc/j;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/loc/j;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lc8/eEd;->e:Ljava/net/Proxy;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_0
    new-instance v2, Lc8/cEd;

    iget v1, p0, Lc8/eEd;->c:I

    iget v3, p0, Lc8/eEd;->d:I

    invoke-direct {v2, v1, v3, v0, p1}, Lc8/cEd;-><init>(IILjava/net/Proxy;Z)V

    invoke-virtual {p0}, Lc8/eEd;->d()[B

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v0, v0

    if-nez v0, :cond_7

    :cond_3
    invoke-virtual {p0}, Lc8/eEd;->c()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    invoke-virtual {p0}, Lc8/eEd;->b()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p0}, Lc8/eEd;->d()[B

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v4, v0

    if-nez v4, :cond_5

    :cond_4
    invoke-virtual {p0}, Lc8/eEd;->b_()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lc8/cEd;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v4}, Lc8/bGd;->a(Ljava/lang/String;)[B

    move-result-object v0

    :cond_5
    invoke-virtual {v2, v1, v3, v0}, Lc8/cEd;->a(Ljava/lang/String;Ljava/util/Map;[B)Lc8/fEd;

    move-result-object v0

    return-object v0

    :cond_6
    iget-object v0, p0, Lc8/eEd;->e:Ljava/net/Proxy;

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lc8/eEd;->b_()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lc8/eEd;->c()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_8
    invoke-static {v0}, Lc8/cEd;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lc8/eEd;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_2
    .catch Lcom/loc/j; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    move-object v1, v0

    goto :goto_1
.end method

.method public static a(Lc8/eEd;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/loc/j;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lc8/XDd;->a(Lc8/eEd;Z)Lc8/fEd;
    :try_end_0
    .catch Lcom/loc/j; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lc8/fEd;->a:[B

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "BaseNetManager"

    const-string/jumbo v2, "makeSyncPostRequest"

    invoke-static {v0, v1, v2}, Lc8/eGd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/loc/j;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/loc/j;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
