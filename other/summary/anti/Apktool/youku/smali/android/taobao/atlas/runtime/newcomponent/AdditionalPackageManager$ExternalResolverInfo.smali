.class public Landroid/taobao/atlas/runtime/newcomponent/AdditionalPackageManager$ExternalResolverInfo;
.super Landroid/content/pm/ResolveInfo;
.source "AdditionalPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Nz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExternalResolverInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 705
    invoke-direct {p0}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 706
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 709
    invoke-direct {p0, p1}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    .line 710
    return-void
.end method
