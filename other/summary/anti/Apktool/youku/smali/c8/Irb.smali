.class public Lc8/Irb;
.super Ljava/lang/Object;
.source "ExpressionBindingCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Jrb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InnerTokenGenerator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static generate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
