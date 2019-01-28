.class public Lc8/xi;
.super Ljava/lang/Object;
.source "FragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/FragmentTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FragmentContainerTransition"
.end annotation


# instance fields
.field public firstOut:Landroid/support/v4/app/Fragment;

.field public firstOutIsPop:Z

.field public firstOutTransaction:Landroid/support/v4/app/BackStackRecord;

.field public lastIn:Landroid/support/v4/app/Fragment;

.field public lastInIsPop:Z

.field public lastInTransaction:Landroid/support/v4/app/BackStackRecord;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 1121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
