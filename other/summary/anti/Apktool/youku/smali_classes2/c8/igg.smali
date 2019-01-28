.class public abstract Lc8/igg;
.super Ljava/lang/Object;
.source "Trace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/lgg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractTrace"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/hgg;)V
    .locals 0
    .param p1, "x0"    # Lc8/hgg;

    .prologue
    .line 35
    invoke-direct {p0}, Lc8/igg;-><init>()V

    return-void
.end method


# virtual methods
.method abstract beginSection(Ljava/lang/String;)V
.end method

.method abstract endSection()V
.end method
