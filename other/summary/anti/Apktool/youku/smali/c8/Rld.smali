.class public final Lc8/Rld;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Lc8/Wjd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/mmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lc8/Gjd;Lc8/omd;)Lc8/Vjd;
    .locals 3
    .param p1, "gson"    # Lc8/Gjd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Gjd;",
            "Lc8/omd",
            "<TT;>;)",
            "Lc8/Vjd",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 574
    .local p2, "typeToken":Lc8/omd;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Lc8/omd;->getRawType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/sql/Timestamp;

    if-eq v1, v2, :cond_0

    .line 575
    const/4 v1, 0x0

    .line 579
    :goto_0
    return-object v1

    .line 578
    :cond_0
    const-class v1, Ljava/util/Date;

    invoke-virtual {p1, v1}, Lc8/Gjd;->getAdapter(Ljava/lang/Class;)Lc8/Vjd;

    move-result-object v0

    .line 579
    .local v0, "dateTypeAdapter":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<Ljava/util/Date;>;"
    new-instance v1, Lc8/Qld;

    invoke-direct {v1, p0, v0}, Lc8/Qld;-><init>(Lc8/Rld;Lc8/Vjd;)V

    goto :goto_0
.end method
