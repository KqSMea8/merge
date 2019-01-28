.class public Lc8/ccb;
.super Ljava/lang/Object;
.source "L.java"


# annotations
.annotation build Lc8/O;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final DBG:Z = false

.field public static final TAG:Ljava/lang/String; = "LOTTIE"

.field private static depthPastMaxDepth:I

.field private static sections:[Ljava/lang/String;

.field private static startTimeNs:[J

.field private static traceDepth:I

.field private static traceEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    sput-boolean v0, Lc8/ccb;->traceEnabled:Z

    .line 15
    sput v0, Lc8/ccb;->traceDepth:I

    .line 16
    sput v0, Lc8/ccb;->depthPastMaxDepth:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .locals 4
    .param p0, "section"    # Ljava/lang/String;

    .prologue
    .line 30
    sget-boolean v0, Lc8/ccb;->traceEnabled:Z

    if-nez v0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 33
    :cond_0
    sget v0, Lc8/ccb;->traceDepth:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    .line 34
    sget v0, Lc8/ccb;->depthPastMaxDepth:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lc8/ccb;->depthPastMaxDepth:I

    goto :goto_0

    .line 37
    :cond_1
    sget-object v0, Lc8/ccb;->sections:[Ljava/lang/String;

    sget v1, Lc8/ccb;->traceDepth:I

    aput-object p0, v0, v1

    .line 38
    sget-object v0, Lc8/ccb;->startTimeNs:[J

    sget v1, Lc8/ccb;->traceDepth:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 39
    invoke-static {p0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 40
    sget v0, Lc8/ccb;->traceDepth:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lc8/ccb;->traceDepth:I

    goto :goto_0
.end method

.method public static endSection(Ljava/lang/String;)F
    .locals 4
    .param p0, "section"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 44
    sget v1, Lc8/ccb;->depthPastMaxDepth:I

    if-lez v1, :cond_1

    .line 45
    sget v1, Lc8/ccb;->depthPastMaxDepth:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lc8/ccb;->depthPastMaxDepth:I

    .line 60
    :cond_0
    :goto_0
    return v0

    .line 48
    :cond_1
    sget-boolean v1, Lc8/ccb;->traceEnabled:Z

    if-eqz v1, :cond_0

    .line 51
    sget v0, Lc8/ccb;->traceDepth:I

    add-int/lit8 v0, v0, -0x1

    .line 52
    sput v0, Lc8/ccb;->traceDepth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 53
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t end trace section. There are none."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_2
    sget-object v0, Lc8/ccb;->sections:[Ljava/lang/String;

    sget v1, Lc8/ccb;->traceDepth:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 56
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unbalanced trace call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lc8/ccb;->sections:[Ljava/lang/String;

    sget v3, Lc8/ccb;->traceDepth:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_3
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 60
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-object v2, Lc8/ccb;->startTimeNs:[J

    sget v3, Lc8/ccb;->traceDepth:I

    aget-wide v2, v2, v3

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr v0, v1

    goto :goto_0
.end method
