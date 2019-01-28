.class public Lc8/Ysg;
.super Ljava/lang/Object;
.source "CustomizedSession.java"

# interfaces
.implements Lc8/tXp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ctg;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc8/ctg;


# direct methods
.method constructor <init>(Lc8/ctg;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lc8/Ysg;->a:Lc8/ctg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSSLPublicKey(I[B)[B
    .locals 5
    .param p1, "seqnum"    # I
    .param p2, "ciphertext"    # [B

    .prologue
    .line 245
    :try_start_0
    iget-object v2, p0, Lc8/Ysg;->a:Lc8/ctg;

    invoke-static {v2}, Lc8/ctg;->b(Lc8/ctg;)Lc8/vtg;

    move-result-object v2

    iget-object v2, v2, Lc8/vtg;->b:Lc8/tsg;

    iget-object v3, p0, Lc8/Ysg;->a:Lc8/ctg;

    invoke-static {v3}, Lc8/ctg;->a(Lc8/ctg;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "tnet_pksg_key"

    invoke-virtual {v2, v3, v4, p2}, Lc8/tsg;->decrypt(Landroid/content/Context;Ljava/lang/String;[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 252
    :goto_0
    return-object v2

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/Exception;
    const/16 v1, 0x10

    .line 248
    .local v1, "p":I
    invoke-static {v1}, Lc8/Tsg;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    const-string/jumbo v2, "CustomizedSession"

    const-string/jumbo v3, "call config.decrypt error."

    invoke-static {v1, v2, v3, v0}, Lc8/Tsg;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
