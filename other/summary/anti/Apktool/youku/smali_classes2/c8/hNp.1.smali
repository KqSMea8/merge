.class public Lc8/hNp;
.super Lc8/eNp;
.source "ProductFilterManagerImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 27
    invoke-direct {p0}, Lc8/eNp;-><init>()V

    .line 30
    new-instance v1, Lc8/aNp;

    invoke-direct {v1}, Lc8/aNp;-><init>()V

    .line 31
    .local v1, "checkSessionDuplexFilter":Lc8/aNp;
    new-instance v0, Lc8/YMp;

    invoke-direct {v0}, Lc8/YMp;-><init>()V

    .line 32
    .local v0, "cacheDuplexFilter":Lc8/YMp;
    new-instance v2, Lc8/bNp;

    invoke-direct {v2}, Lc8/bNp;-><init>()V

    .line 35
    .local v2, "flowLimitDuplexFilter":Lc8/bNp;
    new-instance v3, Lc8/TMp;

    invoke-direct {v3}, Lc8/TMp;-><init>()V

    invoke-virtual {p0, v3}, Lc8/hNp;->addBefore(Lc8/KMp;)V

    .line 36
    invoke-virtual {p0, v1}, Lc8/hNp;->addBefore(Lc8/KMp;)V

    .line 37
    new-instance v3, Lc8/XMp;

    invoke-direct {v3}, Lc8/XMp;-><init>()V

    invoke-virtual {p0, v3}, Lc8/hNp;->addBefore(Lc8/KMp;)V

    .line 38
    new-instance v3, Lc8/WMp;

    new-instance v4, Lc8/SOp;

    invoke-direct {v4}, Lc8/SOp;-><init>()V

    invoke-direct {v3, v4}, Lc8/WMp;-><init>(Lc8/POp;)V

    invoke-virtual {p0, v3}, Lc8/hNp;->addBefore(Lc8/KMp;)V

    .line 39
    new-instance v3, Lc8/VMp;

    new-instance v4, Lc8/YOp;

    invoke-direct {v4}, Lc8/YOp;-><init>()V

    invoke-direct {v3, v4}, Lc8/VMp;-><init>(Lc8/TOp;)V

    invoke-virtual {p0, v3}, Lc8/hNp;->addBefore(Lc8/KMp;)V

    .line 40
    invoke-virtual {p0, v0}, Lc8/hNp;->addBefore(Lc8/KMp;)V

    .line 41
    invoke-virtual {p0, v2}, Lc8/hNp;->addBefore(Lc8/KMp;)V

    .line 42
    new-instance v3, Lc8/UMp;

    invoke-direct {v3}, Lc8/UMp;-><init>()V

    invoke-virtual {p0, v3}, Lc8/hNp;->addBefore(Lc8/KMp;)V

    .line 45
    new-instance v3, Lc8/QMp;

    invoke-direct {v3}, Lc8/QMp;-><init>()V

    invoke-virtual {p0, v3}, Lc8/hNp;->addAfter(Lc8/JMp;)V

    .line 46
    new-instance v3, Lc8/SMp;

    invoke-direct {v3}, Lc8/SMp;-><init>()V

    invoke-virtual {p0, v3}, Lc8/hNp;->addAfter(Lc8/JMp;)V

    .line 47
    new-instance v3, Lc8/MMp;

    invoke-direct {v3}, Lc8/MMp;-><init>()V

    invoke-virtual {p0, v3}, Lc8/hNp;->addAfter(Lc8/JMp;)V

    .line 48
    invoke-virtual {p0, v2}, Lc8/hNp;->addAfter(Lc8/JMp;)V

    .line 49
    new-instance v3, Lc8/NMp;

    invoke-direct {v3}, Lc8/NMp;-><init>()V

    invoke-virtual {p0, v3}, Lc8/hNp;->addAfter(Lc8/JMp;)V

    .line 50
    new-instance v3, Lc8/RMp;

    invoke-direct {v3}, Lc8/RMp;-><init>()V

    invoke-virtual {p0, v3}, Lc8/hNp;->addAfter(Lc8/JMp;)V

    .line 51
    invoke-virtual {p0, v1}, Lc8/hNp;->addAfter(Lc8/JMp;)V

    .line 52
    new-instance v3, Lc8/OMp;

    invoke-direct {v3}, Lc8/OMp;-><init>()V

    invoke-virtual {p0, v3}, Lc8/hNp;->addAfter(Lc8/JMp;)V

    .line 53
    new-instance v3, Lc8/PMp;

    invoke-direct {v3}, Lc8/PMp;-><init>()V

    invoke-virtual {p0, v3}, Lc8/hNp;->addAfter(Lc8/JMp;)V

    .line 54
    invoke-virtual {p0, v0}, Lc8/hNp;->addAfter(Lc8/JMp;)V

    .line 55
    return-void
.end method
