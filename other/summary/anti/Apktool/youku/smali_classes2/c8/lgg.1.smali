.class public Lc8/lgg;
.super Ljava/lang/Object;
.source "Trace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/hgg;,
        Lc8/jgg;,
        Lc8/kgg;,
        Lc8/igg;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Weex_Trace"

.field private static final sEnabled:Z

.field private static final sTrace:Lc8/igg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 55
    sput-boolean v0, Lc8/lgg;->sEnabled:Z

    .line 58
    new-instance v0, Lc8/jgg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/jgg;-><init>(Lc8/hgg;)V

    sput-object v0, Lc8/lgg;->sTrace:Lc8/igg;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .locals 2
    .param p0, "sectionName"    # Ljava/lang/String;

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "beginSection() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    sget-object v0, Lc8/lgg;->sTrace:Lc8/igg;

    invoke-virtual {v0, p0}, Lc8/igg;->beginSection(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public static endSection()V
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lc8/lgg;->sTrace:Lc8/igg;

    invoke-virtual {v0}, Lc8/igg;->endSection()V

    .line 89
    return-void
.end method

.method public static final getTraceEnabled()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lc8/lgg;->sEnabled:Z

    return v0
.end method
