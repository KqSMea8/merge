.class public Lc8/qeb;
.super Ljava/lang/Object;
.source "AnimatableTextProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/peb;
    }
.end annotation


# instance fields
.field public final color:Lc8/Ndb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final stroke:Lc8/Ndb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final strokeWidth:Lc8/Rdb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final tracking:Lc8/Rdb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lc8/Ndb;Lc8/Ndb;Lc8/Rdb;Lc8/Rdb;)V
    .locals 0
    .param p1, "color"    # Lc8/Ndb;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "stroke"    # Lc8/Ndb;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "strokeWidth"    # Lc8/Rdb;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "tracking"    # Lc8/Rdb;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lc8/qeb;->color:Lc8/Ndb;

    .line 20
    iput-object p2, p0, Lc8/qeb;->stroke:Lc8/Ndb;

    .line 21
    iput-object p3, p0, Lc8/qeb;->strokeWidth:Lc8/Rdb;

    .line 22
    iput-object p4, p0, Lc8/qeb;->tracking:Lc8/Rdb;

    .line 23
    return-void
.end method
