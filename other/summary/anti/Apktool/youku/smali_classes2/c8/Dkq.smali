.class public Lc8/Dkq;
.super Ljava/lang/Object;
.source "BackpressureOverflow.java"

# interfaces
.implements Lc8/Fkq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Gkq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DropOldest"
.end annotation


# static fields
.field static final INSTANCE:Lc8/Dkq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lc8/Dkq;

    invoke-direct {v0}, Lc8/Dkq;-><init>()V

    sput-object v0, Lc8/Dkq;->INSTANCE:Lc8/Dkq;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mayAttemptDrop()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method
