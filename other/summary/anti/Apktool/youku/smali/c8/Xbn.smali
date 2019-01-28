.class public Lc8/Xbn;
.super Ljava/lang/Object;
.source "PermissionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Zbn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultHandler"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAlertHandler:Lc8/Ubn;

.field private final mGrantResults:[I

.field private mPermissions:[Ljava/lang/String;

.field private final mPermissionsStatus:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/support/v4/util/ArrayMap;[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "permissions"    # [Ljava/lang/String;
    .param p4, "grantResults"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .line 447
    .local p2, "permissionsStatus":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    iput-object p2, p0, Lc8/Xbn;->mPermissionsStatus:Landroid/support/v4/util/ArrayMap;

    .line 449
    iput-object p1, p0, Lc8/Xbn;->mActivity:Landroid/app/Activity;

    .line 450
    iput-object p3, p0, Lc8/Xbn;->mPermissions:[Ljava/lang/String;

    .line 451
    iput-object p4, p0, Lc8/Xbn;->mGrantResults:[I

    .line 452
    return-void
.end method


# virtual methods
.method public alert(Landroid/app/Activity;II)Lc8/Ubn;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rational"    # I
    .param p3, "requestCode"    # I

    .prologue
    .line 535
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lc8/Xbn;->alert(Landroid/app/Activity;IILc8/Ybn;)Lc8/Ubn;

    move-result-object v0

    return-object v0
.end method

.method public alert(Landroid/app/Activity;IILc8/Ybn;)Lc8/Ubn;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rational"    # I
    .param p3, "requestCode"    # I
    .param p4, "onCanceledListener"    # Lc8/Ybn;

    .prologue
    .line 510
    if-nez p1, :cond_0

    .line 511
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "activity should not be null !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3, p4}, Lc8/Xbn;->alert(Landroid/app/Activity;Ljava/lang/String;ILc8/Ybn;)Lc8/Ubn;

    move-result-object v0

    return-object v0
.end method

.method public alert(Landroid/app/Activity;Ljava/lang/String;ILc8/Ybn;)Lc8/Ubn;
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rational"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "onCanceledListener"    # Lc8/Ybn;

    .prologue
    .line 518
    iget-object v1, p0, Lc8/Xbn;->mAlertHandler:Lc8/Ubn;

    if-nez v1, :cond_0

    .line 519
    new-instance v1, Lc8/Ubn;

    invoke-static {p1, p2, p3, p4}, Lc8/ecn;->getDialog(Landroid/app/Activity;Ljava/lang/String;ILc8/Ybn;)Landroid/app/Dialog;

    move-result-object v2

    iget-object v3, p0, Lc8/Xbn;->mPermissions:[Ljava/lang/String;

    invoke-direct {v1, v2, p1, p3, v3}, Lc8/Ubn;-><init>(Landroid/app/Dialog;Landroid/app/Activity;I[Ljava/lang/String;)V

    iput-object v1, p0, Lc8/Xbn;->mAlertHandler:Lc8/Ubn;

    .line 527
    :goto_0
    iget-object v1, p0, Lc8/Xbn;->mAlertHandler:Lc8/Ubn;

    return-object v1

    .line 521
    :cond_0
    iget-object v1, p0, Lc8/Xbn;->mAlertHandler:Lc8/Ubn;

    invoke-virtual {v1}, Lc8/Ubn;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 522
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_1

    .line 523
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 525
    :cond_1
    iget-object v1, p0, Lc8/Xbn;->mAlertHandler:Lc8/Ubn;

    invoke-static {p1, p2, p3, p4}, Lc8/ecn;->getDialog(Landroid/app/Activity;Ljava/lang/String;ILc8/Ybn;)Landroid/app/Dialog;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/Ubn;->access$202(Lc8/Ubn;Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0
.end method

.method public getDeniedPermissions()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 455
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 456
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lc8/Xbn;->mPermissionsStatus:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 457
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lc8/Xbn;->mPermissionsStatus:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 458
    .local v2, "value":I
    if-eqz v2, :cond_0

    .line 459
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 462
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "value":I
    :cond_1
    return-object v1
.end method

.method public isEveryPermissionGranted()Z
    .locals 3

    .prologue
    .line 466
    iget-object v1, p0, Lc8/Xbn;->mPermissionsStatus:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1}, Landroid/support/v4/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 467
    .local v0, "values":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    .line 468
    const/4 v1, 0x0

    .line 471
    .end local v0    # "values":Ljava/lang/Integer;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
