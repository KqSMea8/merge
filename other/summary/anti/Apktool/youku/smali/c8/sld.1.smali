.class public final Lc8/sld;
.super Ljava/lang/Object;
.source "TimeTypeAdapter.java"

# interfaces
.implements Lc8/Wjd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/tld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lc8/Gjd;Lc8/omd;)Lc8/Vjd;
    .locals 2
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
    .line 44
    .local p2, "typeToken":Lc8/omd;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Lc8/omd;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/sql/Time;

    if-ne v0, v1, :cond_0

    new-instance v0, Lc8/tld;

    invoke-direct {v0}, Lc8/tld;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
