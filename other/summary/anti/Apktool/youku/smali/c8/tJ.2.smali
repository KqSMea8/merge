.class public Lc8/tJ;
.super Ljava/lang/Object;
.source "ByteArrayPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/uJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleInstance"
.end annotation


# static fields
.field static instance:Lc8/uJ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lc8/uJ;

    invoke-direct {v0}, Lc8/uJ;-><init>()V

    sput-object v0, Lc8/tJ;->instance:Lc8/uJ;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
