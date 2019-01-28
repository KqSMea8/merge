.class public Lc8/KYf;
.super Ljava/lang/Object;
.source "WXDomTask.java"

# interfaces
.implements Lc8/zXf;


# instance fields
.field public args:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public instanceId:Ljava/lang/String;

.field public startTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/KYf;->startTime:J

    return-void
.end method
