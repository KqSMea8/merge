.class public Lc8/ahn;
.super Lorg/apache/http/conn/ssl/AbstractVerifier;
.source "HttpsReqManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/dhn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyVerifier"
.end annotation


# instance fields
.field private final delegate:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field final synthetic this$0:Lc8/dhn;


# direct methods
.method public constructor <init>(Lc8/dhn;Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
    .locals 0
    .param p1, "this$0"    # Lc8/dhn;
    .param p2, "delegate"    # Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .prologue
    .line 200
    iput-object p1, p0, Lc8/ahn;->this$0:Lc8/dhn;

    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AbstractVerifier;-><init>()V

    .line 201
    iput-object p2, p0, Lc8/ahn;->delegate:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 202
    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "cns"    # [Ljava/lang/String;
    .param p3, "subjectAlts"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 207
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "====host==="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    const/4 v2, 0x0

    .line 210
    .local v2, "ok":Z
    :try_start_0
    iget-object v4, p0, Lc8/ahn;->delegate:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v4, p1, p2, p3}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :cond_0
    return-void

    .line 211
    :catch_0
    move-exception v1

    .line 212
    .local v1, "e":Ljavax/net/ssl/SSLException;
    array-length v4, p2

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, p2, v3

    .line 213
    .local v0, "cn":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "===cns==="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    const-string/jumbo v5, "*."

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 216
    :try_start_1
    iget-object v5, p0, Lc8/ahn;->delegate:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x2

    .line 217
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 216
    invoke-interface {v5, p1, v6, p3}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 218
    const/4 v2, 0x1

    .line 212
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 223
    .end local v0    # "cn":Ljava/lang/String;
    :cond_2
    if-nez v2, :cond_0

    throw v1

    .restart local v0    # "cn":Ljava/lang/String;
    :catch_1
    move-exception v5

    goto :goto_1
.end method
