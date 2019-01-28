.class public Lc8/Wbn;
.super Ljava/lang/Object;
.source "PermissionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Zbn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestHandler"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mPermissions:[Ljava/lang/String;

.field private final mRequestCode:I


# direct methods
.method varargs constructor <init>(Landroid/app/Activity;I[Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    iput p2, p0, Lc8/Wbn;->mRequestCode:I

    .line 391
    iput-object p1, p0, Lc8/Wbn;->mActivity:Landroid/app/Activity;

    .line 392
    iput-object p3, p0, Lc8/Wbn;->mPermissions:[Ljava/lang/String;

    .line 393
    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Lc8/Xbn;
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 403
    iget v7, p0, Lc8/Wbn;->mRequestCode:I

    if-eq p1, v7, :cond_0

    .line 404
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Wrong Argument: your requestCode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is not match "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lc8/Wbn;->mRequestCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 408
    :cond_0
    if-eqz p2, :cond_1

    array-length v7, p2

    if-nez v7, :cond_2

    .line 409
    :cond_1
    iget-object p2, p0, Lc8/Wbn;->mPermissions:[Ljava/lang/String;

    .line 410
    iget-object v6, p0, Lc8/Wbn;->mActivity:Landroid/app/Activity;

    invoke-static {v6, v5, p2}, Lc8/Zbn;->access$000(Landroid/content/Context;Z[Ljava/lang/String;)Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    .line 411
    .local v0, "check":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v5, Lc8/Xbn;

    iget-object v6, p0, Lc8/Wbn;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lc8/Sbn;->keys2values(Landroid/support/v4/util/ArrayMap;[Ljava/lang/String;)[I

    move-result-object v7

    invoke-direct {v5, v6, v0, p2, v7}, Lc8/Xbn;-><init>(Landroid/app/Activity;Landroid/support/v4/util/ArrayMap;[Ljava/lang/String;[I)V

    .line 432
    .end local v0    # "check":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_0
    return-object v5

    .line 413
    :cond_2
    new-instance v4, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v4}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 414
    .local v4, "permissionsStatus":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v7, p2

    if-ge v2, v7, :cond_7

    .line 416
    aget-object v3, p2, v2

    .line 417
    .local v3, "permission":Ljava/lang/String;
    aget v7, p3, v2

    if-nez v7, :cond_4

    move v1, v5

    .line 424
    .local v1, "gratedType":I
    :goto_2
    if-nez v1, :cond_3

    invoke-static {}, Lc8/Zbn;->access$100()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 425
    iget-object v7, p0, Lc8/Wbn;->mActivity:Landroid/app/Activity;

    invoke-static {v7, v3}, Lc8/Tbn;->isGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    move v1, v5

    .line 428
    :cond_3
    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v3, v7}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 417
    .end local v1    # "gratedType":I
    :cond_4
    iget-object v7, p0, Lc8/Wbn;->mActivity:Landroid/app/Activity;

    aget-object v8, p2, v2

    .line 419
    invoke-static {v7, v8}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v1, -0x1

    goto :goto_2

    :cond_5
    move v1, v6

    goto :goto_2

    .restart local v1    # "gratedType":I
    :cond_6
    move v1, v6

    .line 425
    goto :goto_3

    .line 432
    .end local v1    # "gratedType":I
    .end local v3    # "permission":Ljava/lang/String;
    :cond_7
    new-instance v5, Lc8/Xbn;

    iget-object v6, p0, Lc8/Wbn;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v6, v4, p2, p3}, Lc8/Xbn;-><init>(Landroid/app/Activity;Landroid/support/v4/util/ArrayMap;[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method public requestCode()I
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Lc8/Wbn;->mRequestCode:I

    return v0
.end method
