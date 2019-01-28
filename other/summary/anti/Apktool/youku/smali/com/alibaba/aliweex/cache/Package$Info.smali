.class public Lcom/alibaba/aliweex/cache/Package$Info;
.super Ljava/lang/Object;
.source "Package.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/nwb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# instance fields
.field public code:Ljava/lang/String;

.field public from:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public relpath:Ljava/lang/String;

.field public requestTime:J

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cloneInstance(Lcom/alibaba/aliweex/cache/Package$Info;)Lcom/alibaba/aliweex/cache/Package$Info;
    .locals 4
    .param p0, "info"    # Lcom/alibaba/aliweex/cache/Package$Info;

    .prologue
    .line 40
    new-instance v0, Lcom/alibaba/aliweex/cache/Package$Info;

    invoke-direct {v0}, Lcom/alibaba/aliweex/cache/Package$Info;-><init>()V

    .line 41
    .local v0, "cloned":Lcom/alibaba/aliweex/cache/Package$Info;
    iget-object v1, p0, Lcom/alibaba/aliweex/cache/Package$Info;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/aliweex/cache/Package$Info;->name:Ljava/lang/String;

    .line 42
    iget-object v1, p0, Lcom/alibaba/aliweex/cache/Package$Info;->relpath:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/aliweex/cache/Package$Info;->relpath:Ljava/lang/String;

    .line 43
    iget-object v1, p0, Lcom/alibaba/aliweex/cache/Package$Info;->path:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/aliweex/cache/Package$Info;->path:Ljava/lang/String;

    .line 44
    iget-object v1, p0, Lcom/alibaba/aliweex/cache/Package$Info;->key:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/aliweex/cache/Package$Info;->key:Ljava/lang/String;

    .line 45
    iget-object v1, p0, Lcom/alibaba/aliweex/cache/Package$Info;->version:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/aliweex/cache/Package$Info;->version:Ljava/lang/String;

    .line 46
    iget-object v1, p0, Lcom/alibaba/aliweex/cache/Package$Info;->code:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/aliweex/cache/Package$Info;->code:Ljava/lang/String;

    .line 47
    iget-object v1, p0, Lcom/alibaba/aliweex/cache/Package$Info;->from:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/aliweex/cache/Package$Info;->from:Ljava/lang/String;

    .line 48
    iget-wide v2, p0, Lcom/alibaba/aliweex/cache/Package$Info;->requestTime:J

    iput-wide v2, v0, Lcom/alibaba/aliweex/cache/Package$Info;->requestTime:J

    .line 49
    return-object v0
.end method


# virtual methods
.method public getMD5CacheKey()Ljava/lang/String;
    .locals 10

    .prologue
    .line 53
    iget-object v6, p0, Lcom/alibaba/aliweex/cache/Package$Info;->key:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/alibaba/aliweex/cache/Package$Info;->path:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 55
    :try_start_0
    const-string/jumbo v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 56
    .local v4, "md":Ljava/security/MessageDigest;
    iget-object v6, p0, Lcom/alibaba/aliweex/cache/Package$Info;->path:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 57
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 58
    .local v5, "messageDigest":[B
    if-eqz v5, :cond_2

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .local v3, "hexString":Ljava/lang/StringBuilder;
    array-length v7, v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_1

    aget-byte v0, v5, v6

    .line 62
    .local v0, "aMessageDigest":B
    and-int/lit16 v8, v0, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "h":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_0

    .line 64
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 65
    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "aMessageDigest":B
    .end local v2    # "h":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/aliweex/cache/Package$Info;->key:Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v3    # "hexString":Ljava/lang/StringBuilder;
    .end local v4    # "md":Ljava/security/MessageDigest;
    .end local v5    # "messageDigest":[B
    :cond_2
    :goto_2
    iget-object v6, p0, Lcom/alibaba/aliweex/cache/Package$Info;->key:Ljava/lang/String;

    return-object v6

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 71
    iget-object v6, p0, Lcom/alibaba/aliweex/cache/Package$Info;->path:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/aliweex/cache/Package$Info;->key:Ljava/lang/String;

    goto :goto_2
.end method
