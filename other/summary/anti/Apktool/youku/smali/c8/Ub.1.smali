.class public Lc8/Ub;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"

# interfaces
.implements Lc8/Sb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Zb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NavigationMenuTextItem"
.end annotation


# instance fields
.field private final mMenuItem:Lc8/Vq;

.field needsEmptyIcon:Z


# direct methods
.method constructor <init>(Lc8/Vq;)V
    .locals 0
    .param p1, "item"    # Lc8/Vq;

    .prologue
    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 644
    iput-object p1, p0, Lc8/Ub;->mMenuItem:Lc8/Vq;

    .line 645
    return-void
.end method


# virtual methods
.method public getMenuItem()Lc8/Vq;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lc8/Ub;->mMenuItem:Lc8/Vq;

    return-object v0
.end method
