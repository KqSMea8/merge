.class public Lc8/bmg;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/cmg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 803
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 804
    iput-object p1, p0, Lc8/bmg;->a:Ljava/lang/String;

    .line 805
    iput p2, p0, Lc8/bmg;->b:I

    .line 806
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILc8/Ylg;)V
    .locals 0

    .prologue
    .line 798
    invoke-direct {p0, p1, p2}, Lc8/bmg;-><init>(Ljava/lang/String;I)V

    return-void
.end method
