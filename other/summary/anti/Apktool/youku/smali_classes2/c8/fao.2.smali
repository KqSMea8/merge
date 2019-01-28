.class public Lc8/fao;
.super Ljava/lang/Object;
.source "SignInterceptor.java"

# interfaces
.implements Lc8/LSe;


# static fields
.field private static final SECRET_TYPE:Ljava/lang/String; = "md5"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lc8/KSe;)Lc8/cTe;
    .locals 12
    .param p1, "chain"    # Lc8/KSe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-interface {p1}, Lc8/KSe;->request()Lc8/VSe;

    move-result-object v2

    .line 28
    .local v2, "original":Lc8/VSe;
    invoke-virtual {v2}, Lc8/VSe;->newBuilder()Lc8/USe;

    move-result-object v8

    invoke-virtual {v8}, Lc8/USe;->build()Lc8/VSe;

    move-result-object v3

    .line 30
    .local v3, "request":Lc8/VSe;
    :try_start_0
    invoke-virtual {v3}, Lc8/VSe;->httpUrl()Lc8/JSe;

    move-result-object v8

    invoke-virtual {v8}, Lc8/JSe;->newBuilder()Lc8/ISe;

    move-result-object v5

    .line 32
    .local v5, "urlBuilder":Lc8/ISe;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v10, v8, v10

    sget-object v8, Lc8/OWc;->TIME_STAMP:Ljava/lang/Long;

    if-nez v8, :cond_0

    const-wide/16 v8, 0x0

    :goto_0
    add-long v6, v10, v8

    .line 33
    .local v6, "tmp":J
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 34
    .local v4, "timeStamp":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lc8/VSe;->method()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lc8/VSe;->url()Ljava/net/URL;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "631l1i1x3fv5vs2dxlj5v8x81jqfs2om"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "numRaw":Ljava/lang/String;
    invoke-static {v1}, Lc8/OWc;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "md5NumRaw":Ljava/lang/String;
    const-string/jumbo v8, "_t_"

    invoke-virtual {v5, v8, v4}, Lc8/ISe;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lc8/ISe;

    .line 38
    const-string/jumbo v8, "e"

    const-string/jumbo v9, "md5"

    invoke-virtual {v5, v8, v9}, Lc8/ISe;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lc8/ISe;

    .line 39
    const-string/jumbo v8, "_s_"

    invoke-virtual {v5, v8, v0}, Lc8/ISe;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lc8/ISe;

    .line 40
    invoke-virtual {v3}, Lc8/VSe;->newBuilder()Lc8/USe;

    move-result-object v8

    invoke-virtual {v5}, Lc8/ISe;->build()Lc8/JSe;

    move-result-object v9

    invoke-virtual {v8, v9}, Lc8/USe;->url(Lc8/JSe;)Lc8/USe;

    move-result-object v8

    invoke-virtual {v8}, Lc8/USe;->build()Lc8/VSe;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 45
    .end local v0    # "md5NumRaw":Ljava/lang/String;
    .end local v1    # "numRaw":Ljava/lang/String;
    .end local v4    # "timeStamp":Ljava/lang/String;
    .end local v5    # "urlBuilder":Lc8/ISe;
    .end local v6    # "tmp":J
    :goto_1
    invoke-interface {p1, v3}, Lc8/KSe;->proceed(Lc8/VSe;)Lc8/cTe;

    move-result-object v8

    return-object v8

    .line 32
    .restart local v5    # "urlBuilder":Lc8/ISe;
    :cond_0
    :try_start_1
    sget-object v8, Lc8/OWc;->TIME_STAMP:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v8

    goto :goto_0

    .line 42
    .end local v5    # "urlBuilder":Lc8/ISe;
    :catch_0
    move-exception v8

    const-string/jumbo v8, "WARN: params sign failed"

    invoke-static {v8}, Lc8/FWc;->e(Ljava/lang/String;)V

    goto :goto_1
.end method
