.class public Lc8/Veq;
.super Ljava/lang/Object;
.source "FrameworkEvent.java"


# static fields
.field public static final ERROR:I = 0x2

.field public static final PACKAGES_REFRESHED:I = 0x4

.field public static final STARTED:I = 0x1

.field public static final STARTLEVEL_CHANGED:I = 0x8


# instance fields
.field public state:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lc8/Veq;->state:I

    .line 36
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lc8/Veq;->state:I

    return v0
.end method
