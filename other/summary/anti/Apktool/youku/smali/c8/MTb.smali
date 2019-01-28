.class public Lc8/MTb;
.super Ljava/lang/Object;
.source "RC4.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/NTb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RC4Key"
.end annotation


# instance fields
.field public state:[I

.field public x:I

.field public y:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lc8/MTb;->state:[I

    return-void
.end method

.method synthetic constructor <init>(Lc8/LTb;)V
    .locals 0
    .param p1, "x0"    # Lc8/LTb;

    .prologue
    .line 11
    invoke-direct {p0}, Lc8/MTb;-><init>()V

    return-void
.end method
