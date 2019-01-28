.class public abstract Lc8/SNf;
.super Ljava/lang/Object;
.source "FastFormatLog.java"

# interfaces
.implements Lc8/TNf;


# static fields
.field public static final COMMON_TOTAL_LENGTH:I = 0xfa


# instance fields
.field private final FORMAT_LOCK:Ljava/lang/Object;

.field private mFormatter:Ljava/util/Formatter;

.field private mSB:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc8/SNf;->FORMAT_LOCK:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected varargs fastFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 13
    iget-object v1, p0, Lc8/SNf;->FORMAT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 14
    :try_start_0
    iget-object v0, p0, Lc8/SNf;->mSB:Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0xfa

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lc8/SNf;->mSB:Ljava/lang/StringBuilder;

    .line 19
    :goto_0
    iget-object v0, p0, Lc8/SNf;->mFormatter:Ljava/util/Formatter;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Ljava/util/Formatter;

    iget-object v2, p0, Lc8/SNf;->mSB:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lc8/SNf;->mFormatter:Ljava/util/Formatter;

    .line 22
    :cond_0
    iget-object v0, p0, Lc8/SNf;->mFormatter:Ljava/util/Formatter;

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 23
    iget-object v0, p0, Lc8/SNf;->mSB:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 17
    :cond_1
    iget-object v0, p0, Lc8/SNf;->mSB:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
