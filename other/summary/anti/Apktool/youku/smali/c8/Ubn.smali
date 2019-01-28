.class public Lc8/Ubn;
.super Ljava/lang/Object;
.source "PermissionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Zbn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertHandler"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mDialog:Landroid/app/Dialog;

.field private final mPermissions:[Ljava/lang/String;

.field private mRequestCode:I


# direct methods
.method public varargs constructor <init>(Landroid/app/Dialog;Landroid/app/Activity;I[Ljava/lang/String;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/Dialog;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "requestCode"    # I
    .param p4, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    iput-object p1, p0, Lc8/Ubn;->mDialog:Landroid/app/Dialog;

    .line 559
    iput p3, p0, Lc8/Ubn;->mRequestCode:I

    .line 560
    iput-object p4, p0, Lc8/Ubn;->mPermissions:[Ljava/lang/String;

    .line 561
    iput-object p2, p0, Lc8/Ubn;->mActivity:Landroid/app/Activity;

    .line 562
    return-void
.end method

.method static synthetic access$202(Lc8/Ubn;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lc8/Ubn;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 551
    iput-object p1, p0, Lc8/Ubn;->mDialog:Landroid/app/Dialog;

    return-object p1
.end method


# virtual methods
.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lc8/Ubn;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Lc8/Vbn;
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 569
    iget v0, p0, Lc8/Ubn;->mRequestCode:I

    if-eq p1, v0, :cond_0

    .line 570
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestCode \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' not match alert RequestCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/Ubn;->mRequestCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 572
    :cond_0
    iget-object v0, p0, Lc8/Ubn;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lc8/Ubn;->mPermissions:[Ljava/lang/String;

    invoke-static {v0, v1}, Lc8/Zbn;->isGranted(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 573
    iget-object v0, p0, Lc8/Ubn;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 577
    :goto_0
    new-instance v0, Lc8/Vbn;

    iget-object v1, p0, Lc8/Ubn;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lc8/Ubn;->mPermissions:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lc8/Vbn;-><init>(Landroid/app/Activity;[Ljava/lang/String;)V

    return-object v0

    .line 575
    :cond_1
    iget-object v0, p0, Lc8/Ubn;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method public requestCode()I
    .locals 1

    .prologue
    .line 565
    iget v0, p0, Lc8/Ubn;->mRequestCode:I

    return v0
.end method
