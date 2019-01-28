.class public Lc8/Ckq;
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
    name = "DropLatest"
.end annotation


# static fields
.field static final INSTANCE:Lc8/Ckq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lc8/Ckq;

    invoke-direct {v0}, Lc8/Ckq;-><init>()V

    sput-object v0, Lc8/Ckq;->INSTANCE:Lc8/Ckq;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mayAttemptDrop()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method
