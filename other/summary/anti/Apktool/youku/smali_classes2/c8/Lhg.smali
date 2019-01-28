.class public Lc8/Lhg;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Mhg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ApiTask"
.end annotation


# instance fields
.field final synthetic a:Lc8/Mhg;

.field public mListener:Lc8/Dmg;

.field public mRequestCode:I


# direct methods
.method public constructor <init>(Lc8/Mhg;ILc8/Dmg;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lc8/Lhg;->a:Lc8/Mhg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput p2, p0, Lc8/Lhg;->mRequestCode:I

    .line 282
    iput-object p3, p0, Lc8/Lhg;->mListener:Lc8/Dmg;

    .line 283
    return-void
.end method
