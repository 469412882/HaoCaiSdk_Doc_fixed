.class public final Lcom/google/zxing/client/result/VCardResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "VCardResultParser.java"


# static fields
.field private static final BEGIN_VCARD:Ljava/util/regex/Pattern;

.field private static final COMMA:Ljava/util/regex/Pattern;

.field private static final CR_LF_SPACE_TAB:Ljava/util/regex/Pattern;

.field private static final EQUALS:Ljava/util/regex/Pattern;

.field private static final NEWLINE_ESCAPE:Ljava/util/regex/Pattern;

.field private static final SEMICOLON:Ljava/util/regex/Pattern;

.field private static final SEMICOLON_OR_COMMA:Ljava/util/regex/Pattern;

.field private static final UNESCAPED_SEMICOLONS:Ljava/util/regex/Pattern;

.field private static final VCARD_ESCAPES:Ljava/util/regex/Pattern;

.field private static final VCARD_LIKE_DATE:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    const-string v0, "BEGIN:VCARD"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->BEGIN_VCARD:Ljava/util/regex/Pattern;

    .line 39
    const-string v0, "\\d{4}-?\\d{2}-?\\d{2}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->VCARD_LIKE_DATE:Ljava/util/regex/Pattern;

    .line 40
    const-string v0, "\r\n[ \t]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->CR_LF_SPACE_TAB:Ljava/util/regex/Pattern;

    .line 41
    const-string v0, "\\\\[nN]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->NEWLINE_ESCAPE:Ljava/util/regex/Pattern;

    .line 42
    const-string v0, "\\\\([,;\\\\])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->VCARD_ESCAPES:Ljava/util/regex/Pattern;

    .line 43
    const-string v0, "="

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->EQUALS:Ljava/util/regex/Pattern;

    .line 44
    const-string v0, ";"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->SEMICOLON:Ljava/util/regex/Pattern;

    .line 45
    const-string v0, "(?<!\\\\);+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->UNESCAPED_SEMICOLONS:Ljava/util/regex/Pattern;

    .line 46
    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->COMMA:Ljava/util/regex/Pattern;

    .line 47
    const-string v0, "[;,]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->SEMICOLON_OR_COMMA:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static decodeQuotedPrintable(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "value"    # Ljava/lang/CharSequence;
    .param p1, "charset"    # Ljava/lang/String;

    .line 210
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 211
    .local v0, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 212
    .local v1, "result":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 213
    .local v2, "fragmentBuffer":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 213
    .local v3, "i":I
    .local v4, "c":C
    .local v5, "nextChar":C
    :goto_0
    if-ge v3, v0, :cond_5

    .line 214
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 215
    move v4, v6

    const/16 v7, 0xa

    if-eq v6, v7, :cond_3

    const/16 v8, 0xd

    if-eq v6, v8, :cond_3

    const/16 v9, 0x3d

    if-eq v6, v9, :cond_0

    .line 234
    invoke-static {v2, p1, v1}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendFragment(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 235
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 235
    .end local v4    # "c":C
    goto :goto_1

    .line 220
    :cond_0
    add-int/lit8 v6, v0, -0x2

    if-ge v3, v6, :cond_4

    .line 221
    add-int/lit8 v6, v3, 0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 222
    move v5, v6

    if-eq v6, v8, :cond_2

    if-eq v5, v7, :cond_2

    .line 223
    add-int/lit8 v6, v3, 0x2

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 224
    .local v6, "nextNextChar":C
    invoke-static {v5}, Lcom/google/zxing/client/result/VCardResultParser;->parseHexDigit(C)I

    move-result v7

    .line 225
    .local v7, "firstDigit":I
    invoke-static {v6}, Lcom/google/zxing/client/result/VCardResultParser;->parseHexDigit(C)I

    move-result v8

    .line 226
    .local v8, "secondDigit":I
    if-ltz v7, :cond_1

    if-ltz v8, :cond_1

    .line 227
    shl-int/lit8 v9, v7, 0x4

    add-int/2addr v9, v8

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 229
    :cond_1
    add-int/lit8 v3, v3, 0x2

    .line 231
    .end local v6    # "nextNextChar":C
    .end local v7    # "firstDigit":I
    .end local v8    # "secondDigit":I
    :cond_2
    goto :goto_1

    .line 218
    :cond_3
    nop

    .line 213
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 238
    .end local v3    # "i":I
    .end local v5    # "nextChar":C
    :cond_5
    invoke-static {v2, p1, v1}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendFragment(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 239
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static formatNames(Ljava/lang/Iterable;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 324
    .local p0, "names":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz p0, :cond_1

    .line 325
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 325
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 326
    move-object v1, v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 327
    .local v2, "name":Ljava/lang/String;
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    .line 328
    .local v4, "components":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 330
    .local v5, "start":I
    move v6, v5

    const/4 v5, 0x0

    .line 331
    .local v5, "componentIndex":I
    .local v6, "start":I
    :goto_1
    const/4 v7, 0x4

    if-ge v5, v7, :cond_0

    const/16 v8, 0x3b

    invoke-virtual {v2, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    move v9, v8

    .line 331
    .local v9, "end":I
    if-ltz v8, :cond_0

    .line 332
    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    .line 333
    add-int/lit8 v5, v5, 0x1

    .line 334
    add-int/lit8 v6, v9, 0x1

    goto :goto_1

    .line 336
    .end local v9    # "end":I
    :cond_0
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    .line 337
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x64

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 338
    .local v8, "newName":Ljava/lang/StringBuilder;
    const/4 v9, 0x3

    invoke-static {v4, v9, v8}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 339
    const/4 v9, 0x1

    invoke-static {v4, v9, v8}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 340
    const/4 v9, 0x2

    invoke-static {v4, v9, v8}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 341
    invoke-static {v4, v3, v8}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 342
    invoke-static {v4, v7, v8}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 343
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v3, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 344
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "components":[Ljava/lang/String;
    .end local v5    # "componentIndex":I
    .end local v6    # "start":I
    .end local v8    # "newName":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 346
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method private static isLikeVCardDate(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/CharSequence;

    .line 314
    if-eqz p0, :cond_1

    sget-object v0, Lcom/google/zxing/client/result/VCardResultParser;->VCARD_LIKE_DATE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 2
    .param p0, "prefix"    # Ljava/lang/CharSequence;
    .param p1, "rawText"    # Ljava/lang/String;
    .param p2, "trim"    # Z
    .param p3, "parseFieldDivider"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 266
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {p0, p1, p2, p3}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    .line 267
    move-object v0, v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method static matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 19
    .param p0, "prefix"    # Ljava/lang/CharSequence;
    .param p1, "rawText"    # Ljava/lang/String;
    .param p2, "trim"    # Z
    .param p3, "parseFieldDivider"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 106
    const/4 v1, 0x0

    .line 107
    .local v1, "matches":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .line 108
    .local v2, "i":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    move-object v5, v4

    .line 110
    .local v3, "max":I
    .local v4, "metadatumTokens":[Ljava/lang/String;
    .local v5, "match":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    if-ge v2, v3, :cond_14

    .line 114
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(?:^|\n)"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v7, p0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "(?:;([^:]*))?:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    invoke-static {v6, v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 115
    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 116
    .local v6, "matcher":Ljava/util/regex/Matcher;
    if-lez v2, :cond_0

    .line 117
    add-int/lit8 v2, v2, -0x1

    .line 119
    :cond_0
    invoke-virtual {v6, v2}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 122
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->end(I)I

    move-result v2

    .line 124
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 125
    .local v11, "metadataString":Ljava/lang/String;
    const/4 v12, 0x0

    .line 126
    .local v12, "metadata":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 127
    .local v13, "quotedPrintable":Z
    const/4 v14, 0x0

    .line 128
    .local v14, "quotedPrintableCharset":Ljava/lang/String;
    if-eqz v11, :cond_5

    .line 129
    sget-object v9, Lcom/google/zxing/client/result/VCardResultParser;->SEMICOLON:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v11}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v9

    array-length v8, v9

    move-object v15, v14

    move v14, v13

    move-object v13, v4

    const/4 v4, 0x0

    .line 129
    .end local v4    # "metadatumTokens":[Ljava/lang/String;
    .local v13, "metadatumTokens":[Ljava/lang/String;
    .local v14, "quotedPrintable":Z
    .local v15, "quotedPrintableCharset":Ljava/lang/String;
    :goto_1
    if-ge v4, v8, :cond_4

    aget-object v10, v9, v4

    .line 130
    .local v10, "metadatum":Ljava/lang/String;
    if-nez v12, :cond_1

    .line 131
    move/from16 v16, v2

    new-instance v2, Ljava/util/ArrayList;

    .line 131
    .end local v2    # "i":I
    .local v16, "i":I
    move-object/from16 v17, v6

    const/4 v6, 0x1

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 133
    .end local v6    # "matcher":Ljava/util/regex/Matcher;
    .end local v12    # "metadata":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "metadata":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v17, "matcher":Ljava/util/regex/Matcher;
    move-object v12, v2

    goto :goto_2

    .line 133
    .end local v16    # "i":I
    .end local v17    # "matcher":Ljava/util/regex/Matcher;
    .local v2, "i":I
    .restart local v6    # "matcher":Ljava/util/regex/Matcher;
    .restart local v12    # "metadata":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    move/from16 v16, v2

    move-object/from16 v17, v6

    .line 133
    .end local v2    # "i":I
    .end local v6    # "matcher":Ljava/util/regex/Matcher;
    .restart local v16    # "i":I
    .restart local v17    # "matcher":Ljava/util/regex/Matcher;
    :goto_2
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v2, Lcom/google/zxing/client/result/VCardResultParser;->EQUALS:Ljava/util/regex/Pattern;

    const/4 v6, 0x2

    invoke-virtual {v2, v10, v6}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v2

    move-object v6, v13

    .line 135
    .end local v13    # "metadatumTokens":[Ljava/lang/String;
    .local v6, "metadatumTokens":[Ljava/lang/String;
    move-object v13, v2

    .line 135
    .end local v6    # "metadatumTokens":[Ljava/lang/String;
    .restart local v13    # "metadatumTokens":[Ljava/lang/String;
    array-length v2, v2

    const/4 v6, 0x1

    if-le v2, v6, :cond_3

    .line 136
    const/4 v2, 0x0

    aget-object v7, v13, v2

    .line 137
    .local v7, "key":Ljava/lang/String;
    aget-object v2, v13, v6

    .line 138
    .local v2, "value":Ljava/lang/String;
    const-string v6, "ENCODING"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "QUOTED-PRINTABLE"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 139
    const/4 v6, 0x1

    .line 129
    .end local v14    # "quotedPrintable":Z
    .local v6, "quotedPrintable":Z
    move v14, v6

    goto :goto_3

    .line 140
    .end local v6    # "quotedPrintable":Z
    .restart local v14    # "quotedPrintable":Z
    :cond_2
    const-string v6, "CHARSET"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 141
    nop

    .line 129
    .end local v7    # "key":Ljava/lang/String;
    .end local v10    # "metadatum":Ljava/lang/String;
    .end local v13    # "metadatumTokens":[Ljava/lang/String;
    .end local v15    # "quotedPrintableCharset":Ljava/lang/String;
    .local v2, "quotedPrintableCharset":Ljava/lang/String;
    move-object v15, v2

    .line 129
    .end local v2    # "quotedPrintableCharset":Ljava/lang/String;
    .restart local v15    # "quotedPrintableCharset":Ljava/lang/String;
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    move/from16 v2, v16

    move-object/from16 v6, v17

    move-object/from16 v7, p0

    const/4 v10, 0x1

    goto :goto_1

    .line 147
    .end local v16    # "i":I
    .end local v17    # "matcher":Ljava/util/regex/Matcher;
    .local v2, "i":I
    .local v6, "matcher":Ljava/util/regex/Matcher;
    .restart local v13    # "metadatumTokens":[Ljava/lang/String;
    :cond_4
    move/from16 v16, v2

    move-object/from16 v17, v6

    move-object v4, v13

    move v13, v14

    move-object v14, v15

    goto :goto_4

    .line 147
    .end local v15    # "quotedPrintableCharset":Ljava/lang/String;
    .restart local v4    # "metadatumTokens":[Ljava/lang/String;
    .local v13, "quotedPrintable":Z
    .local v14, "quotedPrintableCharset":Ljava/lang/String;
    :cond_5
    move/from16 v16, v2

    move-object/from16 v17, v6

    .line 147
    .end local v2    # "i":I
    .end local v6    # "matcher":Ljava/util/regex/Matcher;
    .restart local v16    # "i":I
    .restart local v17    # "matcher":Ljava/util/regex/Matcher;
    :goto_4
    move/from16 v2, v16

    .line 147
    .restart local v2    # "i":I
    .local v16, "matchStart":I
    :goto_5
    move/from16 v6, v16

    .line 149
    .end local v16    # "matchStart":I
    .local v6, "matchStart":I
    const/16 v7, 0xa

    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    move v2, v7

    if-ltz v7, :cond_a

    .line 150
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-ge v2, v7, :cond_7

    add-int/lit8 v7, v2, 0x1

    .line 151
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-eq v7, v8, :cond_6

    add-int/lit8 v7, v2, 0x1

    .line 152
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x9

    if-ne v7, v8, :cond_7

    .line 153
    :cond_6
    add-int/lit8 v2, v2, 0x2

    .line 147
    .end local v6    # "matchStart":I
    .restart local v16    # "matchStart":I
    :goto_6
    move/from16 v16, v6

    goto :goto_5

    .line 154
    .end local v16    # "matchStart":I
    .restart local v6    # "matchStart":I
    :cond_7
    if-eqz v13, :cond_a

    const/16 v7, 0x3d

    if-lez v2, :cond_9

    add-int/lit8 v8, v2, -0x1

    .line 155
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v7, :cond_8

    goto :goto_7

    .line 157
    :cond_8
    const/4 v8, 0x2

    goto :goto_8

    .line 155
    :cond_9
    :goto_7
    const/4 v8, 0x2

    if-lt v2, v8, :cond_a

    add-int/lit8 v9, v2, -0x2

    .line 156
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v7, :cond_a

    .line 157
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 163
    :cond_a
    if-gez v2, :cond_b

    .line 165
    move v2, v3

    goto/16 :goto_0

    .line 166
    :cond_b
    if-le v2, v6, :cond_13

    .line 168
    if-nez v1, :cond_c

    .line 169
    new-instance v7, Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v7

    .line 171
    :cond_c
    if-lez v2, :cond_d

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0xd

    if-ne v7, v8, :cond_d

    .line 172
    add-int/lit8 v2, v2, -0x1

    .line 174
    :cond_d
    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 175
    .local v7, "element":Ljava/lang/String;
    if-eqz p2, :cond_e

    .line 176
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 178
    :cond_e
    if-eqz v13, :cond_f

    .line 179
    invoke-static {v7, v14}, Lcom/google/zxing/client/result/VCardResultParser;->decodeQuotedPrintable(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 180
    if-eqz p3, :cond_11

    .line 181
    sget-object v9, Lcom/google/zxing/client/result/VCardResultParser;->UNESCAPED_SEMICOLONS:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    .line 184
    :cond_f
    if-eqz p3, :cond_10

    .line 185
    sget-object v9, Lcom/google/zxing/client/result/VCardResultParser;->UNESCAPED_SEMICOLONS:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 187
    :cond_10
    sget-object v9, Lcom/google/zxing/client/result/VCardResultParser;->CR_LF_SPACE_TAB:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 188
    sget-object v9, Lcom/google/zxing/client/result/VCardResultParser;->NEWLINE_ESCAPE:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 189
    sget-object v9, Lcom/google/zxing/client/result/VCardResultParser;->VCARD_ESCAPES:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    const-string v10, "$1"

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 191
    :cond_11
    :goto_9
    if-nez v12, :cond_12

    .line 192
    new-instance v9, Ljava/util/ArrayList;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 193
    move-object v5, v9

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    .end local v5    # "match":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_a

    .line 196
    .restart local v5    # "match":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_12
    const/4 v9, 0x0

    invoke-interface {v12, v9, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 197
    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    :goto_a
    add-int/lit8 v2, v2, 0x1

    .line 200
    .end local v7    # "element":Ljava/lang/String;
    goto/16 :goto_0

    .line 201
    :cond_13
    add-int/lit8 v2, v2, 0x1

    .line 204
    .end local v6    # "matchStart":I
    .end local v11    # "metadataString":Ljava/lang/String;
    .end local v12    # "metadata":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "quotedPrintable":Z
    .end local v14    # "quotedPrintableCharset":Ljava/lang/String;
    .end local v17    # "matcher":Ljava/util/regex/Matcher;
    goto/16 :goto_0

    .line 206
    .end local v4    # "metadatumTokens":[Ljava/lang/String;
    .end local v5    # "match":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_14
    return-object v1
.end method

.method private static maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V
    .locals 1
    .param p0, "components"    # [Ljava/lang/String;
    .param p1, "i"    # I
    .param p2, "newName"    # Ljava/lang/StringBuilder;

    .line 349
    aget-object v0, p0, p1

    if-eqz v0, :cond_1

    aget-object v0, p0, p1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 350
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 351
    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 353
    :cond_0
    aget-object v0, p0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    :cond_1
    return-void
.end method

.method private static maybeAppendFragment(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 3
    .param p0, "fragmentBuffer"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 246
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 248
    .local v0, "fragmentBytes":[B
    if-nez p1, :cond_0

    .line 249
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 249
    .local v1, "fragment":Ljava/lang/String;
    goto :goto_0

    .line 252
    .end local v1    # "fragment":Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .restart local v1    # "fragment":Ljava/lang/String;
    goto :goto_0

    .line 253
    .end local v1    # "fragment":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 254
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 257
    .restart local v1    # "fragment":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 258
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .end local v0    # "fragmentBytes":[B
    .end local v1    # "fragment":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static toPrimaryValue(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 271
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 275
    .local p0, "lists":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 278
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 279
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 279
    .local v0, "value":Ljava/lang/String;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 280
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 281
    move-object v0, v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 282
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    .end local v0    # "value":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 285
    :cond_2
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 276
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    return-object v0
.end method

.method private static toTypes(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 289
    .local p0, "lists":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    .line 292
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 293
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 293
    .local v0, "metadatum":Ljava/lang/String;
    .local v4, "equals":I
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 294
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 295
    .local v6, "type":Ljava/lang/String;
    const/4 v7, 0x1

    .line 295
    .local v7, "i":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 296
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 297
    move-object v0, v8

    const/16 v9, 0x3d

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 298
    move v4, v8

    if-gez v8, :cond_1

    .line 300
    move-object v6, v0

    .line 301
    goto :goto_2

    .line 303
    :cond_1
    const-string v8, "TYPE"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 304
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 305
    goto :goto_2

    .line 295
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 308
    .end local v7    # "i":I
    :cond_3
    :goto_2
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "type":Ljava/lang/String;
    goto :goto_0

    .line 310
    .end local v0    # "metadatum":Ljava/lang/String;
    .end local v4    # "equals":I
    :cond_4
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 290
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    :goto_3
    return-object v0
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;
    .locals 37
    .param p1, "result"    # Lcom/google/zxing/Result;

    .line 54
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/VCardResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "rawText":Ljava/lang/String;
    sget-object v1, Lcom/google/zxing/client/result/VCardResultParser;->BEGIN_VCARD:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 56
    .local v3, "m":Ljava/util/regex/Matcher;
    move-object v3, v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    move-object/from16 v27, v0

    move-object/from16 v26, v3

    goto/16 :goto_3

    .line 59
    :cond_0
    const-string v1, "FN"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v0, v4, v5}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    move-object v6, v2

    .line 60
    .local v6, "names":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    move-object v6, v1

    if-nez v1, :cond_1

    .line 62
    const-string v1, "N"

    invoke-static {v1, v0, v4, v5}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    .line 63
    move-object v6, v1

    invoke-static {v1}, Lcom/google/zxing/client/result/VCardResultParser;->formatNames(Ljava/lang/Iterable;)V

    .line 65
    :cond_1
    const-string v1, "NICKNAME"

    invoke-static {v1, v0, v4, v5}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    move-object v7, v2

    .line 66
    .local v7, "nicknameString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v7, v1

    if-nez v1, :cond_2

    move-object v10, v2

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/google/zxing/client/result/VCardResultParser;->COMMA:Ljava/util/regex/Pattern;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v1, v8}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    .line 67
    .local v10, "nicknames":[Ljava/lang/String;
    :goto_0
    const-string v1, "TEL"

    invoke-static {v1, v0, v4, v5}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    .line 68
    .local v1, "phoneNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v8, "EMAIL"

    invoke-static {v8, v0, v4, v5}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v15

    .line 69
    .local v15, "emails":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v8, "NOTE"

    invoke-static {v8, v0, v5, v5}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v14

    .line 70
    .local v14, "note":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, "ADR"

    invoke-static {v8, v0, v4, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v13

    .line 71
    .local v13, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v8, "ORG"

    invoke-static {v8, v0, v4, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v12

    .line 72
    .local v12, "org":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, "BDAY"

    invoke-static {v8, v0, v4, v5}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v8

    move-object v9, v2

    .line 73
    .local v9, "birthday":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v9, v8

    if-eqz v8, :cond_3

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Lcom/google/zxing/client/result/VCardResultParser;->isLikeVCardDate(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 74
    const/4 v9, 0x0

    .line 76
    .end local v9    # "birthday":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v11, "birthday":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    move-object v11, v9

    const-string v8, "TITLE"

    invoke-static {v8, v0, v4, v5}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v9

    .line 77
    .local v9, "title":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, "URL"

    invoke-static {v8, v0, v4, v5}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v8

    .line 78
    .local v8, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v2, "IMPP"

    invoke-static {v2, v0, v4, v5}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v2

    .line 79
    .local v2, "instantMessenger":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v26, v3

    const-string v3, "GEO"

    .line 79
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .local v26, "m":Ljava/util/regex/Matcher;
    invoke-static {v3, v0, v4, v5}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v16, v4

    .line 80
    .local v16, "geoString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v4, v3

    .line 80
    .end local v16    # "geoString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v4, "geoString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    sget-object v3, Lcom/google/zxing/client/result/VCardResultParser;->SEMICOLON_OR_COMMA:Ljava/util/regex/Pattern;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    :goto_1
    const/4 v5, 0x0

    .line 81
    .local v5, "geo":[Ljava/lang/String;
    move-object v5, v3

    if-eqz v3, :cond_5

    array-length v3, v5

    move-object/from16 v27, v0

    const/4 v0, 0x2

    .line 81
    .end local v0    # "rawText":Ljava/lang/String;
    .local v27, "rawText":Ljava/lang/String;
    if-eq v3, v0, :cond_6

    .line 82
    const/4 v0, 0x0

    .line 82
    .end local v5    # "geo":[Ljava/lang/String;
    .local v0, "geo":[Ljava/lang/String;
    goto :goto_2

    .line 84
    .end local v27    # "rawText":Ljava/lang/String;
    .local v0, "rawText":Ljava/lang/String;
    .restart local v5    # "geo":[Ljava/lang/String;
    :cond_5
    move-object/from16 v27, v0

    .line 84
    .end local v0    # "rawText":Ljava/lang/String;
    .restart local v27    # "rawText":Ljava/lang/String;
    :cond_6
    move-object v0, v5

    .line 84
    .end local v5    # "geo":[Ljava/lang/String;
    .local v0, "geo":[Ljava/lang/String;
    :goto_2
    new-instance v3, Lcom/google/zxing/client/result/AddressBookParsedResult;

    invoke-static {v6}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v5

    const/16 v16, 0x0

    .line 87
    invoke-static {v1}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v17

    .line 88
    invoke-static {v1}, Lcom/google/zxing/client/result/VCardResultParser;->toTypes(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v18

    .line 89
    invoke-static {v15}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v19

    .line 90
    invoke-static {v15}, Lcom/google/zxing/client/result/VCardResultParser;->toTypes(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v20

    .line 91
    invoke-static {v2}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v21

    .line 92
    invoke-static {v14}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v22

    .line 93
    invoke-static {v13}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v23

    .line 94
    invoke-static {v13}, Lcom/google/zxing/client/result/VCardResultParser;->toTypes(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v24

    .line 95
    invoke-static {v12}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v25

    .line 96
    invoke-static {v11}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v28

    .line 97
    invoke-static {v9}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v29

    .line 98
    invoke-static {v8}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v30

    move-object/from16 v31, v8

    move-object v8, v3

    .line 98
    .end local v8    # "urls":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .local v31, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    move-object/from16 v32, v9

    move-object v9, v5

    .line 98
    .end local v9    # "title":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v32, "title":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v5, v11

    move-object/from16 v11, v16

    .line 98
    .end local v11    # "birthday":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v5, "birthday":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v33, v12

    move-object/from16 v12, v17

    .line 98
    .end local v12    # "org":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v33, "org":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v34, v13

    move-object/from16 v13, v18

    .line 98
    .end local v13    # "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .local v34, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    move-object/from16 v35, v14

    move-object/from16 v14, v19

    .line 98
    .end local v14    # "note":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v35, "note":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v36, v15

    move-object/from16 v15, v20

    .line 98
    .end local v15    # "emails":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .local v36, "emails":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    move-object/from16 v16, v21

    move-object/from16 v17, v22

    move-object/from16 v18, v23

    move-object/from16 v19, v24

    move-object/from16 v20, v25

    move-object/from16 v21, v28

    move-object/from16 v22, v29

    move-object/from16 v23, v30

    move-object/from16 v24, v0

    invoke-direct/range {v8 .. v24}, Lcom/google/zxing/client/result/AddressBookParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 84
    return-object v3

    .line 57
    .end local v1    # "phoneNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "instantMessenger":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "geoString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "birthday":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v7    # "nicknameString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "nicknames":[Ljava/lang/String;
    .end local v26    # "m":Ljava/util/regex/Matcher;
    .end local v27    # "rawText":Ljava/lang/String;
    .end local v31    # "urls":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v32    # "title":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v33    # "org":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v34    # "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v35    # "note":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v36    # "emails":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .local v0, "rawText":Ljava/lang/String;
    .restart local v3    # "m":Ljava/util/regex/Matcher;
    :cond_7
    move-object/from16 v27, v0

    move-object/from16 v26, v3

    .line 57
    .end local v0    # "rawText":Ljava/lang/String;
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .restart local v26    # "m":Ljava/util/regex/Matcher;
    .restart local v27    # "rawText":Ljava/lang/String;
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/VCardResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-result-object p1

    return-object p1
.end method
