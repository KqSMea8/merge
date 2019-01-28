.class public Lc8/Ccb;
.super Ljava/lang/Object;
.source "TextDelegate.java"


# instance fields
.field private final animationView:Lc8/hcb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private cacheText:Z

.field private final drawable:Lc8/tcb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final stringMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Ccb;->stringMap:Ljava/util/Map;

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Ccb;->cacheText:Z

    .line 27
    iput-object v1, p0, Lc8/Ccb;->animationView:Lc8/hcb;

    .line 28
    iput-object v1, p0, Lc8/Ccb;->drawable:Lc8/tcb;

    .line 29
    return-void
.end method

.method public constructor <init>(Lc8/hcb;)V
    .locals 1
    .param p1, "animationView"    # Lc8/hcb;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Ccb;->stringMap:Ljava/util/Map;

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Ccb;->cacheText:Z

    .line 33
    iput-object p1, p0, Lc8/Ccb;->animationView:Lc8/hcb;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Ccb;->drawable:Lc8/tcb;

    .line 35
    return-void
.end method

.method public constructor <init>(Lc8/tcb;)V
    .locals 1
    .param p1, "drawable"    # Lc8/tcb;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Ccb;->stringMap:Ljava/util/Map;

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Ccb;->cacheText:Z

    .line 38
    iput-object p1, p0, Lc8/Ccb;->drawable:Lc8/tcb;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Ccb;->animationView:Lc8/hcb;

    .line 40
    return-void
.end method


# virtual methods
.method public getText(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 47
    return-object p1
.end method

.method public final getTextInternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-boolean v1, p0, Lc8/Ccb;->cacheText:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/Ccb;->stringMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lc8/Ccb;->stringMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 90
    :goto_0
    return-object v1

    .line 86
    :cond_0
    invoke-virtual {p0, p1}, Lc8/Ccb;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "text":Ljava/lang/String;
    iget-boolean v1, p0, Lc8/Ccb;->cacheText:Z

    if-eqz v1, :cond_1

    .line 88
    iget-object v1, p0, Lc8/Ccb;->stringMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v1, v0

    .line 90
    goto :goto_0
.end method
