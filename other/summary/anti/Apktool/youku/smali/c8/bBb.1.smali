.class public final Lc8/bBb;
.super Ljava/lang/Object;
.source "TnetUtil.java"

# interfaces
.implements Lc8/tXp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/dBb;->sendRequest([B)Lc8/VAb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSSLPublicKey(I[B)[B
    .locals 3
    .param p1, "seqnum"    # I
    .param p2, "ciphertext"    # [B

    .prologue
    .line 101
    invoke-static {}, Lc8/aBb;->getInstance()Lc8/aBb;

    move-result-object v0

    const/16 v1, 0x10

    const-string/jumbo v2, "tnet_pksg_key"

    invoke-virtual {v0, v1, v2, p2}, Lc8/aBb;->staticBinarySafeDecryptNoB64(ILjava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method
