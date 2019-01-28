.class public Lc8/Vbn;
.super Ljava/lang/Object;
.source "PermissionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Zbn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertResultHandler"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mPermissions:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 591
    iput-object p2, p0, Lc8/Vbn;->mPermissions:[Ljava/lang/String;

    .line 592
    iput-object p1, p0, Lc8/Vbn;->mActivity:Landroid/app/Activity;

    .line 593
    return-void
.end method


# virtual methods
.method public isGranted()Z
    .locals 2

    .prologue
    .line 596
    iget-object v0, p0, Lc8/Vbn;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lc8/Vbn;->mPermissions:[Ljava/lang/String;

    invoke-static {v0, v1}, Lc8/Zbn;->isGranted(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
