.class public Lc8/iL;
.super Ljava/lang/Object;
.source "StrategyTemplate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/jL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "holder"
.end annotation


# static fields
.field static instance:Lc8/jL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lc8/jL;

    invoke-direct {v0}, Lc8/jL;-><init>()V

    sput-object v0, Lc8/iL;->instance:Lc8/jL;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
