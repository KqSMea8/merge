.class public final Lc8/IBq;
.super Ljava/lang/Object;
.source "SubjectSubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/SubjectSubscriptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lc8/IBq;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public static final NO_OBSERVERS:[Lc8/JBq;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public static final TERMINATED:Lc8/IBq;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field


# instance fields
.field public final observers:[Lc8/JBq;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public final terminated:Z
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 153
    new-array v0, v3, [Lc8/JBq;

    sput-object v0, Lc8/IBq;->NO_OBSERVERS:[Lc8/JBq;

    .line 154
    new-instance v0, Lc8/IBq;

    const/4 v1, 0x1

    sget-object v2, Lc8/IBq;->NO_OBSERVERS:[Lc8/JBq;

    invoke-direct {v0, v1, v2}, Lc8/IBq;-><init>(Z[Lc8/JBq;)V

    sput-object v0, Lc8/IBq;->TERMINATED:Lc8/IBq;

    .line 155
    new-instance v0, Lc8/IBq;

    sget-object v1, Lc8/IBq;->NO_OBSERVERS:[Lc8/JBq;

    invoke-direct {v0, v3, v1}, Lc8/IBq;-><init>(Z[Lc8/JBq;)V

    sput-object v0, Lc8/IBq;->EMPTY:Lc8/IBq;

    return-void
.end method

.method public constructor <init>(Z[Lc8/JBq;)V
    .locals 0
    .param p1, "terminated"    # Z
    .param p2, "observers"    # [Lc8/JBq;

    .prologue
    .line 157
    .local p0, "this":Lc8/IBq;, "Lrx/subjects/SubjectSubscriptionManager$State<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-boolean p1, p0, Lc8/IBq;->terminated:Z

    .line 159
    iput-object p2, p0, Lc8/IBq;->observers:[Lc8/JBq;

    .line 160
    return-void
.end method


# virtual methods
.method public add(Lc8/JBq;)Lc8/IBq;
    .locals 5
    .param p1, "o"    # Lc8/JBq;

    .prologue
    .local p0, "this":Lc8/IBq;, "Lrx/subjects/SubjectSubscriptionManager$State<TT;>;"
    const/4 v4, 0x0

    .line 162
    iget-object v0, p0, Lc8/IBq;->observers:[Lc8/JBq;

    .line 163
    .local v0, "a":[Lc8/JBq;
    array-length v2, v0

    .line 164
    .local v2, "n":I
    add-int/lit8 v3, v2, 0x1

    new-array v1, v3, [Lc8/JBq;

    .line 165
    .local v1, "b":[Lc8/JBq;
    iget-object v3, p0, Lc8/IBq;->observers:[Lc8/JBq;

    invoke-static {v3, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    aput-object p1, v1, v2

    .line 167
    new-instance v3, Lc8/IBq;

    iget-boolean v4, p0, Lc8/IBq;->terminated:Z

    invoke-direct {v3, v4, v1}, Lc8/IBq;-><init>(Z[Lc8/JBq;)V

    return-object v3
.end method

.method public remove(Lc8/JBq;)Lc8/IBq;
    .locals 10
    .param p1, "o"    # Lc8/JBq;

    .prologue
    .local p0, "this":Lc8/IBq;, "Lrx/subjects/SubjectSubscriptionManager$State<TT;>;"
    const/4 v9, 0x0

    .line 170
    iget-object v0, p0, Lc8/IBq;->observers:[Lc8/JBq;

    .line 171
    .local v0, "a":[Lc8/JBq;
    array-length v7, v0

    .line 172
    .local v7, "n":I
    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    aget-object v8, v0, v9

    if-ne v8, p1, :cond_1

    .line 173
    sget-object p0, Lc8/IBq;->EMPTY:Lc8/IBq;

    .line 197
    .end local p0    # "this":Lc8/IBq;, "Lrx/subjects/SubjectSubscriptionManager$State<TT;>;"
    :cond_0
    :goto_0
    return-object p0

    .line 175
    .restart local p0    # "this":Lc8/IBq;, "Lrx/subjects/SubjectSubscriptionManager$State<TT;>;"
    :cond_1
    if-eqz v7, :cond_0

    .line 178
    add-int/lit8 v8, v7, -0x1

    new-array v2, v8, [Lc8/JBq;

    .line 179
    .local v2, "b":[Lc8/JBq;
    const/4 v5, 0x0

    .line 180
    .local v5, "j":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v6, v5

    .end local v5    # "j":I
    .local v6, "j":I
    :goto_1
    if-ge v4, v7, :cond_2

    .line 181
    aget-object v1, v0, v4

    .line 182
    .local v1, "ai":Lc8/JBq;
    if-eq v1, p1, :cond_5

    .line 183
    add-int/lit8 v8, v7, -0x1

    if-eq v6, v8, :cond_0

    .line 186
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "j":I
    .restart local v5    # "j":I
    aput-object v1, v2, v6

    .line 180
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v6, v5

    .end local v5    # "j":I
    .restart local v6    # "j":I
    goto :goto_1

    .line 189
    .end local v1    # "ai":Lc8/JBq;
    :cond_2
    if-nez v6, :cond_3

    .line 190
    sget-object p0, Lc8/IBq;->EMPTY:Lc8/IBq;

    goto :goto_0

    .line 192
    :cond_3
    add-int/lit8 v8, v7, -0x1

    if-ge v6, v8, :cond_4

    .line 193
    new-array v3, v6, [Lc8/JBq;

    .line 194
    .local v3, "c":[Lc8/JBq;
    invoke-static {v2, v9, v3, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    move-object v2, v3

    .line 197
    .end local v3    # "c":[Lc8/JBq;
    :cond_4
    new-instance v8, Lc8/IBq;

    iget-boolean v9, p0, Lc8/IBq;->terminated:Z

    invoke-direct {v8, v9, v2}, Lc8/IBq;-><init>(Z[Lc8/JBq;)V

    move-object p0, v8

    goto :goto_0

    .restart local v1    # "ai":Lc8/JBq;
    :cond_5
    move v5, v6

    .end local v6    # "j":I
    .restart local v5    # "j":I
    goto :goto_2
.end method
