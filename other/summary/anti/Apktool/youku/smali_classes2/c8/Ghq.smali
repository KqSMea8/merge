.class public final Lc8/Ghq;
.super Lc8/Nhq;
.source "AndroidApacheClient.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "Retrofit"

    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/Nhq;-><init>(Lorg/apache/http/client/HttpClient;)V

    .line 31
    return-void
.end method
