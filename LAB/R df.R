# Creating a DataFrame
std_df = data.frame(
  std_names = c('a','b','c','d','e'),
  std_enroll = c(101,102,103,104,105),
  dob=as.Date(c('2002-10-03','2002-10-02','2002-10-04','2002-10-01','2002-10-05'))
)
std_df

# Accessing elements by index
std_df[1]
std_df [1,3]

# Accessing elements by column std_names
std_df[["dob"]]

# Accessing elements using $ operator
std_df$std_names

std_df <- rbind(std_df, c("f", 106, "2002-10-01"))
std_df

std_df <- cbind(std_df, marks=c(99,99,99,99,99,99))
std_df

# Dropping first row
std_df[-1,]

# Dropping first column
std_df[-1]


dim(std_df)
ncol(std_df)
nrow(std_df)

# Merge two DataFrames
section1_df <- data.frame(
  std_names = c("Drishti"),
  enrollment_no = c(101),
  dob = as.Date(c("2022-09-15"))
)

section2_df <- data.frame(
  std_names = c("Shruti"),
  enrollment_no = c(102),
  dob = as.Date (c("2022-09-14"))
)

combined_df <- rbind(section1_df, section2_df)
combined_df