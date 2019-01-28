.class public final Lc8/mTh;
.super Lc8/oTh;
.source "UploadHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/pTh;->generateParams(Ljava/lang/String;Ljava/lang/String;Z)Lc8/oTh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field isCaptureEnabled:Z

.field mimeType:Ljava/lang/String;

.field final synthetic val$acceptType:Ljava/lang/String;

.field final synthetic val$capture:Ljava/lang/String;

.field final synthetic val$isMultiple:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 204
    iput-object p1, p0, Lc8/mTh;->val$acceptType:Ljava/lang/String;

    iput-object p2, p0, Lc8/mTh;->val$capture:Ljava/lang/String;

    iput-boolean p3, p0, Lc8/mTh;->val$isMultiple:Z

    invoke-direct {p0}, Lc8/oTh;-><init>()V

    .line 209
    iget-object v6, p0, Lc8/mTh;->val$acceptType:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 210
    iget-object v6, p0, Lc8/mTh;->val$acceptType:Ljava/lang/String;

    const-string/jumbo v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 211
    .local v3, "params":[Ljava/lang/String;
    aget-object v6, v3, v4

    iput-object v6, p0, Lc8/mTh;->mimeType:Ljava/lang/String;

    .line 212
    const/4 v1, 0x0

    .line 214
    .local v1, "mediaSource":Ljava/lang/String;
    iget-object v6, p0, Lc8/mTh;->val$capture:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 215
    iget-object v1, p0, Lc8/mTh;->val$capture:Ljava/lang/String;

    .line 228
    :cond_0
    const-string/jumbo v6, "*"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "image/*"

    iget-object v7, p0, Lc8/mTh;->mimeType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "camera"

    .line 229
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_1
    const-string/jumbo v6, "video/*"

    iget-object v7, p0, Lc8/mTh;->mimeType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "camcorder"

    .line 230
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    const-string/jumbo v6, "audio/*"

    iget-object v7, p0, Lc8/mTh;->mimeType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "microphone"

    .line 231
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    move v4, v5

    :cond_4
    iput-boolean v4, p0, Lc8/mTh;->isCaptureEnabled:Z

    .line 233
    .end local v1    # "mediaSource":Ljava/lang/String;
    .end local v3    # "params":[Ljava/lang/String;
    :cond_5
    return-void

    .line 217
    .restart local v1    # "mediaSource":Ljava/lang/String;
    .restart local v3    # "params":[Ljava/lang/String;
    :cond_6
    array-length v7, v3

    move v6, v4

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v2, v3, v6

    .line 218
    .local v2, "p":Ljava/lang/String;
    const-string/jumbo v8, "="

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "keyValue":[Ljava/lang/String;
    array-length v8, v0

    const/4 v9, 0x2

    if-ne v8, v9, :cond_7

    .line 221
    const-string/jumbo v8, "capture"

    aget-object v9, v0, v4

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 222
    aget-object v1, v0, v5

    .line 217
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected createIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 247
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 248
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    iget-object v1, p0, Lc8/mTh;->mimeType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "*/*"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    return-object v0

    .line 249
    :cond_0
    iget-object v1, p0, Lc8/mTh;->mimeType:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getAcceptTypes()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 242
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lc8/mTh;->mimeType:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected isCaptureEnabled()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lc8/mTh;->isCaptureEnabled:Z

    return v0
.end method

.method protected isMultiple()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lc8/mTh;->val$isMultiple:Z

    return v0
.end method
