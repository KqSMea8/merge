.class public Lc8/PEd;
.super Ljava/lang/Object;
.source "ConfigVersionInfo.java"


# annotations
.annotation runtime Lc8/fDd;
    a = "b"
.end annotation


# instance fields
.field private a:I
    .annotation runtime Lc8/gDd;
        a = "b1"
        b = 0x2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lc8/PEd;->a:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lc8/PEd;->a:I

    return-void
.end method
