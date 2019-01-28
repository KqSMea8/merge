.class public Lc8/Ph;
.super Ljava/lang/Object;
.source "VisibilityPort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Qh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VisibilityInfo"
.end annotation


# instance fields
.field endParent:Landroid/view/ViewGroup;

.field endVisibility:I

.field fadeIn:Z

.field startParent:Landroid/view/ViewGroup;

.field startVisibility:I

.field visibilityChange:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    return-void
.end method
